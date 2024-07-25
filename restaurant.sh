#!/bin/bash

while getopts "t:d:g:" opt; do
    case $opt in
    t) echo "$OPTARG $(date +%H-%M-%S)" ;;
    d) echo "$OPTARG $(date +%d-%m-%Y)" ;;
    g) while read line; do
        echo "$line"
    done <"guidelines.txt" ;;
    \?) ;;
    esac
done

# Chicken pot pie
declare -A pie_prices
pie_prices=(
    [1]=150
    [2]=170
    [3]=200
    [4]=250
)

declare -A pie_sizes
pie_sizes=(
    [1]="6 inches"
    [2]="8 inches"
    [3]="10 inches"
    [4]="12 inches"
)

# Mashed Potatoes
declare -A potato_prices
potato_prices=(
    [1]=100
    [2]=120
    [3]=150
    [4]=200
)

declare -A potato_sizes
potato_sizes=(
    [1]="100 g"
    [2]="200 g"
    [3]="300 g"
    [4]="400 g"
)

# Fried Chicken
declare -A chicken_prices
chicken_prices=(
    [1]=150
    [2]=170
    [3]=200
)

declare -A chicken_sizes
chicken_sizes=(
    [1]="150 g"
    [2]="200 g"
    [3]="250 g"
)

# Burgers
declare -A burger_prices
burger_prices=(
    [1]=150
    [2]=50
    [3]=40
)

declare -A burger_types
burger_types=(
    [1]="Chicken"
    [2]="Egg"
    [3]="Vegetables"
)

# Chicken Soup
declare -A soup_prices
soup_prices=(
    [1]=70
    [2]=120
    [3]=150
)

declare -A soup_sizes
soup_sizes=(
    [1]="150 g"
    [2]="250 g"
    [3]="300 g"
)

# Coke
declare -A coke_prices
coke_prices=(
    [1]=30
    [2]=50
    [3]=80
    [4]=120
)

declare -A coke_sizes
coke_sizes=(
    [1]="250 mL"
    [2]="500 mL"
    [3]="1 L"
    [4]="2 L"
)

# Coffee
declare -A coffee_prices
coffee_prices=(
    [1]=60
    [2]=50
)

declare -A coffee_types
coffee_types=(
    [1]="200 mL cold"
    [2]="200 mL"
)

# Cake
declare -A cake_prices
cake_prices=(
    [1]=120
    [2]=170
    [3]=220
    [4]=260
    [5]=300
)

declare -A cake_sizes
cake_sizes=(
    [1]="1 pound"
    [2]="2 pounds"
    [3]="2.5 pounds"
    [4]="3 pounds"
    [5]="4 pounds"
)

# French Fries
declare -A fries_prices
fries_prices=(
    [1]=50
    [2]=70
    [3]=100
    [4]=130
)

declare -A fries_sizes
fries_sizes=(
    [1]="150 g"
    [2]="200 g"
    [3]="250 g"
    [4]="300 g"
)

# Bread Sticks
declare -A sticks_prices
sticks_prices=(
    [1]=70
    [2]=100
    [3]=120
    [4]=170
)

declare -A sticks_sizes
sticks_sizes=(
    [1]="150 g"
    [2]="200 g"
    [3]="250 g"
    [4]="350 g"
)

echo "________________________________________WELCOME TO FAST FOOD RESTAURANT ______________________________"
echo
echo "______________________________________________MENU ITEM_______________________________________________"
echo " Item No_________FOOD Name_________________Size____________________________Price_____"
echo "   1          Chicken pot pie           6/8/10/12 inches                150/170/200/250 kVND"
echo "   2          Mashed potatoes           100/200/300/400 g               100/120/150/200 kVND"
echo "   3          Fried chicken             150/200/250 g                   150/170/200 kVND"
echo "   4          Burgers                   chicken/egg/vegetables          150/50/40 kVND"
echo "   5          Chicken soup              150/250/300 g                   70/120/150 kVND"
echo "   6          coke                      250/500/1/2 L                   30/50/80/120 kVND"
echo "   7          Coffee                    200 mL                          50/60 kVND"
echo "   8          cake                      1/2/2.5/3/4 pound               120/170/220/260/300 kVND"
echo "   9          French fries              150/200/250/300 g               50/70/100/130 kVND"
echo "   10         Bread sticks              150/200/250/350 g               70/100/120/170 kVND"
echo "________________________________________________________________________________________________________"
echo "________________________________________________________________________________________________________"
read -r -p "Do you want to order (yes-1/no-2): " ord
while ((ord == 1)); do

    read -r -p "Please enter your name: " name
    read -r -p "Please choose the food item: " item

    if ((item == 1)); then
        echo -e "\nHere is our Chicken pot pie list"
        echo "_____________________________________"
        echo "ITEM_NO________SIZE________PRICE"
        for id in "${!pie_prices[@]}"; do
            echo "  $id           ${pie_sizes[$id]}      ${pie_prices[$id]} kVND"
        done

        read -r -p "Which size of pot pie do you want to order: " potPie_size
        if ((potPie_size >= 1 && potPie_size <= 4)); then
            read -r -p "How many Pot Pies do you want: " pie_quantity
            price=$((pie_quantity * pie_prices[$potPie_size]))
        else
            echo "Wrong Input!!!!"
            continue
        fi

    elif ((item == 2)); then
        echo " "
        echo "Mashed Potatoes List: "
        echo "_____________________________________"
        echo "ITEM_NO________SIZE________PRICE"
        for id in "${!potato_prices[@]}"; do
            echo "  $id           ${potato_sizes[$id]}     ${potato_prices[$id]} kVND"
        done

        read -r -p "Which size of Mashed Potatoes do you want: " potato_size
        if ((potato_size >= 1 && potato_size <= 4)); then
            read -r -p "How many Mashed Potatoes do you want: " potato_quantity
            price=$((potato_quantity * potato_prices[$potato_size]))
        else
            echo "Wrong Input!!!!"
            continue
        fi

    elif ((item == 3)); then
        echo " "
        echo "Fried Chicken: "
        echo "_____________________________________"
        echo "ITEM_NO________SIZE________PRICE"
        for id in "${!chicken_prices[@]}"; do
            echo "  $id           ${chicken_sizes[$id]}     ${chicken_prices[$id]} kVND"
        done

        read -r -p "Which item of Fried Chicken do you want: " chicken_size
        if ((chicken_size >= 1 && chicken_size <= 3)); then
            read -r -p "How many Fried Chickens do you want: " chicken_quantity
            price=$((chicken_quantity * chicken_prices[$chicken_size]))
        else
            echo "Wrong Input!!!!"
            continue
        fi

    elif ((item == 4)); then
        echo " "
        echo "Which types of Burgers do you want: "
        echo "_____________________________________"
        echo "ITEM_NO________TYPES________PRICE"
        for id in "${!burger_prices[@]}"; do
            echo "  $id           ${burger_types[$id]}     ${burger_prices[$id]} kVND"
        done

        read -r -p "Which type of Burgers do you want: " burger_type
        if ((burger_type >= 1 && burger_type <= 3)); then
            read -r -p "How many Burgers do you want: " burger_quantity
            price=$((burger_quantity * burger_prices[$burger_type]))
        else
            echo "Wrong Input!!!!"
            continue
        fi

    elif ((item == 5)); then
        echo " "
        echo "Which types of Chicken soup do you want: "
        echo "_____________________________________"
        echo "ITEM_NO________TYPES________PRICE"
        for id in "${!soup_prices[@]}"; do
            echo "  $id           ${soup_sizes[$id]}     ${soup_prices[$id]} kVND"
        done

        read -r -p "Which type of Chicken soup do you want: " soup_type
        if ((soup_type >= 1 && soup_type <= 3)); then
            read -r -p "How many Chicken soups do you want: " soup_quantity
            price=$((soup_quantity * soup_prices[$soup_type]))
        else
            echo "Wrong Input!!!!"
            continue
        fi

    elif ((item == 6)); then
        echo -e "\nHere is our Coke list"
        echo "_____________________________________"
        echo "ITEM_NO________QUANTITY________PRICE"
        for id in "${!coke_prices[@]}"; do
            echo "  $id           ${coke_sizes[$id]}     ${coke_prices[$id]} kVND"
        done

        read -r -p "Which quantity of Coke do you want: " coke_quantity
        if ((coke_quantity >= 1 && coke_quantity <= 4)); then
            read -r -p "How many Cokes do you want: " coke_quantity_total
            price=$((coke_quantity_total * coke_prices[$coke_quantity]))
        else
            echo "Wrong Input!!!!"
            continue
        fi

    elif ((item == 7)); then
        echo -e "\nHere is our Coffee list"
        echo "_____________________________________"
        echo "ITEM_NO________QUANTITY________PRICE"
        for id in "${!coffee_prices[@]}"; do
            echo "  $id           ${coffee_types[$id]}     ${coffee_prices[$id]} kVND"
        done

        read -r -p "Which type of Coffee do you want: " coffee_type
        if ((coffee_type >= 1 && coffee_type <= 2)); then
            read -r -p "How many Coffees do you want: " coffee_quantity
            price=$((coffee_quantity * coffee_prices[$coffee_type]))
        else
            echo "Wrong Input!!!!"
            continue
        fi

    elif ((item == 8)); then
        echo " "
        echo "Cake List: "
        echo "_____________________________________"
        echo "ITEM_NO________SIZE________PRICE"
        for id in "${!cake_prices[@]}"; do
            echo "  $id           ${cake_sizes[$id]}     ${cake_prices[$id]} kVND"
        done

        read -r -p "Which size of Cake do you want: " cake_size
        if ((cake_size >= 1 && cake_size <= 5)); then
            read -r -p "How many Cakes do you want: " cake_quantity
            price=$((cake_quantity * cake_prices[$cake_size]))
        else
            echo "Wrong Input!!!!"
            continue
        fi

    elif ((item == 9)); then
        echo " "
        echo "French Fries List: "
        echo "_____________________________________"
        echo "ITEM_NO________SIZE________PRICE"
        for id in "${!fries_prices[@]}"; do
            echo "  $id           ${fries_sizes[$id]}     ${fries_prices[$id]} kVND"
        done

        read -r -p "Which size of French Fries do you want: " fries_size
        if ((fries_size >= 1 && fries_size <= 4)); then
            read -r -p "How many French Fries do you want: " fries_quantity
            price=$((fries_quantity * fries_prices[$fries_size]))
        else
            echo "Wrong Input!!!!"
            continue
        fi

    elif ((item == 10)); then
        echo " "
        echo "Bread Sticks List: "
        echo "_____________________________________"
        echo "ITEM_NO________SIZE________PRICE"
        for id in "${!sticks_prices[@]}"; do
            echo "  $id           ${sticks_sizes[$id]}     ${sticks_prices[$id]} kVND"
        done

        read -r -p "Which size of Bread Sticks do you want: " sticks_size
        if ((sticks_size >= 1 && sticks_size <= 4)); then
            read -r -p "How many Bread Sticks do you want: " sticks_quantity
            price=$((sticks_quantity * sticks_prices[$sticks_size]))
        else
            echo "Wrong Input!!!!"
            continue
        fi

    else
        echo "Wrong Input!!!!"
        continue
    fi

    echo "Your order price is: $price kVND"
    if [[ ! -f his.txt ]]; then
        touch his.txt
    fi

    echo "$(date +%d-%m-%Y_%H-%M-%S) $name $price" >>his.txt
    read -r -p "Do you want to continue ordering? (yes-1/no-2): " ord
done

echo
# PS3 is the prompt string used by the select command
PS3="Rating: "

# Use the select command to create a menu for star ratings
select star in '*' '**' '***' '****' '*****'; do
    case "$star" in
    '*' | '**' | '***')
        echo "Contact this hotline 123 to report problems"
        ;;
    '****' | '*****') ;;
    *)
        echo "Invalid selection, please try again."
        continue
        ;;
    esac
    echo "Thanks for your $star rating"
    break
done

echo "Thank you for your order!"
