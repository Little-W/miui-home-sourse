.class public Lmiuix/pickerwidget/date/CalendarFormatSymbols;
.super Ljava/lang/Object;
.source "CalendarFormatSymbols.java"


# static fields
.field private static INSTANCE:Lmiuix/core/util/SoftReferenceSingleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiuix/core/util/SoftReferenceSingleton<",
            "Lmiuix/pickerwidget/date/CalendarFormatSymbols;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mResources:Landroid/content/res/Resources;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Lmiuix/pickerwidget/date/CalendarFormatSymbols;->mResources:Landroid/content/res/Resources;

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lmiuix/pickerwidget/date/CalendarFormatSymbols$1;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Lmiuix/pickerwidget/date/CalendarFormatSymbols;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public static getOrCreate(Landroid/content/Context;)Lmiuix/pickerwidget/date/CalendarFormatSymbols;
    .locals 1

    .line 30
    sget-object v0, Lmiuix/pickerwidget/date/CalendarFormatSymbols;->INSTANCE:Lmiuix/core/util/SoftReferenceSingleton;

    if-nez v0, :cond_0

    .line 31
    new-instance v0, Lmiuix/pickerwidget/date/CalendarFormatSymbols$1;

    invoke-direct {v0}, Lmiuix/pickerwidget/date/CalendarFormatSymbols$1;-><init>()V

    sput-object v0, Lmiuix/pickerwidget/date/CalendarFormatSymbols;->INSTANCE:Lmiuix/core/util/SoftReferenceSingleton;

    .line 38
    :cond_0
    sget-object v0, Lmiuix/pickerwidget/date/CalendarFormatSymbols;->INSTANCE:Lmiuix/core/util/SoftReferenceSingleton;

    invoke-virtual {v0, p0}, Lmiuix/core/util/SoftReferenceSingleton;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lmiuix/pickerwidget/date/CalendarFormatSymbols;

    return-object p0
.end method


# virtual methods
.method public getAmPms()[Ljava/lang/String;
    .locals 2

    .line 73
    iget-object v0, p0, Lmiuix/pickerwidget/date/CalendarFormatSymbols;->mResources:Landroid/content/res/Resources;

    sget v1, Lmiuix/pickerwidget/R$array;->am_pms:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getChineseDays()[Ljava/lang/String;
    .locals 2

    .line 59
    iget-object v0, p0, Lmiuix/pickerwidget/date/CalendarFormatSymbols;->mResources:Landroid/content/res/Resources;

    sget v1, Lmiuix/pickerwidget/R$array;->chinese_days:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getChineseDigits()[Ljava/lang/String;
    .locals 2

    .line 80
    iget-object v0, p0, Lmiuix/pickerwidget/date/CalendarFormatSymbols;->mResources:Landroid/content/res/Resources;

    sget v1, Lmiuix/pickerwidget/R$array;->chinese_digits:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getChineseLeapMonths()[Ljava/lang/String;
    .locals 2

    .line 87
    iget-object v0, p0, Lmiuix/pickerwidget/date/CalendarFormatSymbols;->mResources:Landroid/content/res/Resources;

    sget v1, Lmiuix/pickerwidget/R$array;->chinese_leap_months:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getChineseMonths()[Ljava/lang/String;
    .locals 2

    .line 94
    iget-object v0, p0, Lmiuix/pickerwidget/date/CalendarFormatSymbols;->mResources:Landroid/content/res/Resources;

    sget v1, Lmiuix/pickerwidget/R$array;->chinese_months:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getChineseSymbolAnimals()[Ljava/lang/String;
    .locals 2

    .line 136
    iget-object v0, p0, Lmiuix/pickerwidget/date/CalendarFormatSymbols;->mResources:Landroid/content/res/Resources;

    sget v1, Lmiuix/pickerwidget/R$array;->chinese_symbol_animals:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDetailedAmPms()[Ljava/lang/String;
    .locals 2

    .line 66
    iget-object v0, p0, Lmiuix/pickerwidget/date/CalendarFormatSymbols;->mResources:Landroid/content/res/Resources;

    sget v1, Lmiuix/pickerwidget/R$array;->detailed_am_pms:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEarthlyBranches()[Ljava/lang/String;
    .locals 2

    .line 101
    iget-object v0, p0, Lmiuix/pickerwidget/date/CalendarFormatSymbols;->mResources:Landroid/content/res/Resources;

    sget v1, Lmiuix/pickerwidget/R$array;->earthly_branches:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEras()[Ljava/lang/String;
    .locals 2

    .line 143
    iget-object v0, p0, Lmiuix/pickerwidget/date/CalendarFormatSymbols;->mResources:Landroid/content/res/Resources;

    sget v1, Lmiuix/pickerwidget/R$array;->eras:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHeavenlyStems()[Ljava/lang/String;
    .locals 2

    .line 129
    iget-object v0, p0, Lmiuix/pickerwidget/date/CalendarFormatSymbols;->mResources:Landroid/content/res/Resources;

    sget v1, Lmiuix/pickerwidget/R$array;->heavenly_stems:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLocale()Ljava/util/Locale;
    .locals 1

    .line 45
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method public getMonths()[Ljava/lang/String;
    .locals 2

    .line 122
    iget-object v0, p0, Lmiuix/pickerwidget/date/CalendarFormatSymbols;->mResources:Landroid/content/res/Resources;

    sget v1, Lmiuix/pickerwidget/R$array;->months:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getShortMonths()[Ljava/lang/String;
    .locals 2

    .line 108
    iget-object v0, p0, Lmiuix/pickerwidget/date/CalendarFormatSymbols;->mResources:Landroid/content/res/Resources;

    sget v1, Lmiuix/pickerwidget/R$array;->months_short:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getShortWeekDays()[Ljava/lang/String;
    .locals 2

    .line 150
    iget-object v0, p0, Lmiuix/pickerwidget/date/CalendarFormatSymbols;->mResources:Landroid/content/res/Resources;

    sget v1, Lmiuix/pickerwidget/R$array;->week_days_short:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getShortestMonths()[Ljava/lang/String;
    .locals 2

    .line 115
    iget-object v0, p0, Lmiuix/pickerwidget/date/CalendarFormatSymbols;->mResources:Landroid/content/res/Resources;

    sget v1, Lmiuix/pickerwidget/R$array;->months_shortest:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getShortestWeekDays()[Ljava/lang/String;
    .locals 2

    .line 157
    iget-object v0, p0, Lmiuix/pickerwidget/date/CalendarFormatSymbols;->mResources:Landroid/content/res/Resources;

    sget v1, Lmiuix/pickerwidget/R$array;->week_days_shortest:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSolarTerms()[Ljava/lang/String;
    .locals 2

    .line 52
    iget-object v0, p0, Lmiuix/pickerwidget/date/CalendarFormatSymbols;->mResources:Landroid/content/res/Resources;

    sget v1, Lmiuix/pickerwidget/R$array;->solar_terms:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWeekDays()[Ljava/lang/String;
    .locals 2

    .line 164
    iget-object v0, p0, Lmiuix/pickerwidget/date/CalendarFormatSymbols;->mResources:Landroid/content/res/Resources;

    sget v1, Lmiuix/pickerwidget/R$array;->week_days:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
