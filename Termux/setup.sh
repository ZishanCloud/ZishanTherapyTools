#!/bin/bash
clear
echo "========================================="
echo "           Auto Setup Tool               "
echo "========================================="
echo "1. Basic Packages Install (আপডেট এবং আপগ্রেড)"
echo "2. Tool Setup (আপনার নির্দিষ্ট টুল)"
echo "3. Exit (বেরিয়ে যান)"
echo "========================================="
read -p "আপনার অপশনটি নির্বাচন করুন (1/2/3): " choice

case $choice in
    1)
        echo "প্যাকেজ ইন্সটল হচ্ছে, দয়া করে অপেক্ষা করুন..."
        pkg update -y && pkg upgrade -y
        echo "ইন্সটলেশন শেষ!"
        ;;
    2)
        echo "টুল সেটআপ শুরু হচ্ছে..."
        # এখানে আপনার টুলের কমান্ডগুলো দিবেন। যেমন:
        # git clone https://github.com/example/tool.git
        # cd tool
        # chmod +x setup.sh
        # ./setup.sh
        echo "টুল সেটআপ সফল হয়েছে!"
        ;;
    3)
        echo "বেরিয়ে যাচ্ছি..."
        exit 0
        ;;
    *)
        echo "ভুল অপশন! দয়া করে ১, ২ অথবা ৩ চাপুন।"
        ;;
esac
