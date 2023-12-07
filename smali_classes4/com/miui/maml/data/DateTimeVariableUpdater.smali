.class public Lcom/miui/maml/data/DateTimeVariableUpdater;
.super Lcom/miui/maml/data/NotifierVariableUpdater;
.source "DateTimeVariableUpdater.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/maml/data/DateTimeVariableUpdater$Accuracy;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "DateTimeVariableUpdater"

.field private static final SETTING_NEXT_ALARM_TIME:Ljava/lang/String; = "next_alarm_clock_formatted"

.field private static final TIME_DAY:I = 0x5265c00

.field private static final TIME_HOUR:I = 0x36ee80

.field private static final TIME_MINUTE:I = 0xea60

.field private static final TIME_SECOND:I = 0x3e8

.field public static final USE_TAG:Ljava/lang/String; = "DateTime"

.field private static final fields:[I

.field private static sCalendar:Lmiuix/pickerwidget/date/Calendar;


# instance fields
.field private mAmPm:Lcom/miui/maml/data/IndexedVariable;

.field protected mCalendar:Lmiuix/pickerwidget/date/Calendar;

.field private mCurrentTime:J

.field private mDate:Lcom/miui/maml/data/IndexedVariable;

.field private mDateLunar:Lcom/miui/maml/data/IndexedVariable;

.field private mDayOfWeek:Lcom/miui/maml/data/IndexedVariable;

.field private volatile mFinished:Z

.field private mHour12:Lcom/miui/maml/data/IndexedVariable;

.field private mHour24:Lcom/miui/maml/data/IndexedVariable;

.field private mLastUpdatedTime:J

.field private final mLock:Ljava/lang/Object;

.field private mMinute:Lcom/miui/maml/data/IndexedVariable;

.field private mMonth:Lcom/miui/maml/data/IndexedVariable;

.field private mMonth1:Lcom/miui/maml/data/IndexedVariable;

.field private mMonthLunar:Lcom/miui/maml/data/IndexedVariable;

.field private mMonthLunarLeap:Lcom/miui/maml/data/IndexedVariable;

.field private mNextAlarm:Lcom/miui/maml/data/IndexedVariable;

.field private mNextUpdateTime:J

.field private mSecond:Lcom/miui/maml/data/IndexedVariable;

.field private mTime:Lcom/miui/maml/data/IndexedVariable;

.field private mTimeAccuracy:J

.field private mTimeAccuracyField:I

.field private mTimeFormat:I

.field private mTimeFormatVar:Lcom/miui/maml/data/IndexedVariable;

.field private mTimeSys:Lcom/miui/maml/data/IndexedVariable;

.field private mTimeUpdater:Ljava/lang/Runnable;

.field private mYear:Lcom/miui/maml/data/IndexedVariable;

.field private mYearLunar:Lcom/miui/maml/data/IndexedVariable;

.field private mYearLunar1864:Lcom/miui/maml/data/IndexedVariable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x5

    new-array v0, v0, [I

    .line 24
    fill-array-data v0, :array_0

    sput-object v0, Lcom/miui/maml/data/DateTimeVariableUpdater;->fields:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x16
        0x15
        0x14
        0x12
        0x9
    .end array-data
.end method

.method public constructor <init>(Lcom/miui/maml/data/VariableUpdaterManager;)V
    .locals 1

    .line 86
    sget-object v0, Lcom/miui/maml/data/DateTimeVariableUpdater$Accuracy;->Minute:Lcom/miui/maml/data/DateTimeVariableUpdater$Accuracy;

    invoke-direct {p0, p1, v0}, Lcom/miui/maml/data/DateTimeVariableUpdater;-><init>(Lcom/miui/maml/data/VariableUpdaterManager;Lcom/miui/maml/data/DateTimeVariableUpdater$Accuracy;)V

    return-void
.end method

.method public constructor <init>(Lcom/miui/maml/data/VariableUpdaterManager;Lcom/miui/maml/data/DateTimeVariableUpdater$Accuracy;)V
    .locals 1

    .line 107
    sget-object v0, Lcom/miui/maml/NotifierManager;->TYPE_TIME_CHANGED:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/miui/maml/data/NotifierVariableUpdater;-><init>(Lcom/miui/maml/data/VariableUpdaterManager;Ljava/lang/String;)V

    .line 55
    new-instance p1, Lmiuix/pickerwidget/date/Calendar;

    invoke-direct {p1}, Lmiuix/pickerwidget/date/Calendar;-><init>()V

    iput-object p1, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    const/4 p1, -0x1

    .line 61
    iput p1, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mTimeFormat:I

    .line 71
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mLock:Ljava/lang/Object;

    .line 108
    invoke-direct {p0, p2}, Lcom/miui/maml/data/DateTimeVariableUpdater;->initInner(Lcom/miui/maml/data/DateTimeVariableUpdater$Accuracy;)V

    return-void
.end method

.method public constructor <init>(Lcom/miui/maml/data/VariableUpdaterManager;Ljava/lang/String;)V
    .locals 5

    .line 90
    sget-object v0, Lcom/miui/maml/NotifierManager;->TYPE_TIME_CHANGED:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/miui/maml/data/NotifierVariableUpdater;-><init>(Lcom/miui/maml/data/VariableUpdaterManager;Ljava/lang/String;)V

    .line 55
    new-instance p1, Lmiuix/pickerwidget/date/Calendar;

    invoke-direct {p1}, Lmiuix/pickerwidget/date/Calendar;-><init>()V

    iput-object p1, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    const/4 p1, -0x1

    .line 61
    iput p1, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mTimeFormat:I

    .line 71
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mLock:Ljava/lang/Object;

    .line 91
    new-instance p1, Lcom/miui/maml/data/TimeUpdater;

    invoke-direct {p1, p0}, Lcom/miui/maml/data/TimeUpdater;-><init>(Lcom/miui/maml/data/DateTimeVariableUpdater;)V

    iput-object p1, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mTimeUpdater:Ljava/lang/Runnable;

    .line 93
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 94
    invoke-static {}, Lcom/miui/maml/data/DateTimeVariableUpdater$Accuracy;->values()[Lcom/miui/maml/data/DateTimeVariableUpdater$Accuracy;

    move-result-object p1

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p1, v2

    .line 95
    invoke-virtual {v3}, Lcom/miui/maml/data/DateTimeVariableUpdater$Accuracy;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v0, v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    if-nez v0, :cond_2

    .line 100
    sget-object v0, Lcom/miui/maml/data/DateTimeVariableUpdater$Accuracy;->Minute:Lcom/miui/maml/data/DateTimeVariableUpdater$Accuracy;

    .line 101
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalid accuracy tag:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "DateTimeVariableUpdater"

    invoke-static {p2, p1}, Lcom/miui/maml/util/MamlLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    :cond_2
    invoke-direct {p0, v0}, Lcom/miui/maml/data/DateTimeVariableUpdater;->initInner(Lcom/miui/maml/data/DateTimeVariableUpdater$Accuracy;)V

    return-void
.end method

.method public static formatDate(Ljava/lang/CharSequence;J)Ljava/lang/String;
    .locals 1

    .line 209
    sget-object v0, Lcom/miui/maml/data/DateTimeVariableUpdater;->sCalendar:Lmiuix/pickerwidget/date/Calendar;

    if-nez v0, :cond_0

    .line 210
    new-instance v0, Lmiuix/pickerwidget/date/Calendar;

    invoke-direct {v0}, Lmiuix/pickerwidget/date/Calendar;-><init>()V

    sput-object v0, Lcom/miui/maml/data/DateTimeVariableUpdater;->sCalendar:Lmiuix/pickerwidget/date/Calendar;

    .line 212
    :cond_0
    sget-object v0, Lcom/miui/maml/data/DateTimeVariableUpdater;->sCalendar:Lmiuix/pickerwidget/date/Calendar;

    invoke-virtual {v0, p1, p2}, Lmiuix/pickerwidget/date/Calendar;->setTimeInMillis(J)Lmiuix/pickerwidget/date/Calendar;

    .line 213
    sget-object p1, Lcom/miui/maml/data/DateTimeVariableUpdater;->sCalendar:Lmiuix/pickerwidget/date/Calendar;

    invoke-static {}, Lcom/miui/maml/util/Utils;->getAppContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p1, p2, p0}, Lmiuix/pickerwidget/date/Calendar;->format(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private initInner(Lcom/miui/maml/data/DateTimeVariableUpdater$Accuracy;)V
    .locals 5

    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "init with accuracy:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/miui/maml/data/DateTimeVariableUpdater$Accuracy;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DateTimeVariableUpdater"

    invoke-static {v1, v0}, Lcom/miui/maml/util/MamlLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    sget-object v0, Lcom/miui/maml/data/DateTimeVariableUpdater$1;->$SwitchMap$com$miui$maml$data$DateTimeVariableUpdater$Accuracy:[I

    invoke-virtual {p1}, Lcom/miui/maml/data/DateTimeVariableUpdater$Accuracy;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v1, 0x2

    if-eq p1, v1, :cond_2

    const/4 v1, 0x3

    const/16 v2, 0x14

    const-wide/32 v3, 0xea60

    if-eq p1, v1, :cond_1

    const/4 v1, 0x4

    if-eq p1, v1, :cond_0

    .line 131
    iput-wide v3, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mTimeAccuracy:J

    .line 132
    iput v2, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mTimeAccuracyField:I

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x3e8

    .line 127
    iput-wide v1, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mTimeAccuracy:J

    const/16 p1, 0x15

    .line 128
    iput p1, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mTimeAccuracyField:I

    goto :goto_0

    .line 123
    :cond_1
    iput-wide v3, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mTimeAccuracy:J

    .line 124
    iput v2, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mTimeAccuracyField:I

    goto :goto_0

    :cond_2
    const-wide/32 v1, 0x36ee80

    .line 119
    iput-wide v1, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mTimeAccuracy:J

    const/16 p1, 0x12

    .line 120
    iput p1, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mTimeAccuracyField:I

    goto :goto_0

    :cond_3
    const-wide/32 v1, 0x5265c00

    .line 115
    iput-wide v1, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mTimeAccuracy:J

    const/16 p1, 0x9

    .line 116
    iput p1, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mTimeAccuracyField:I

    .line 136
    :goto_0
    invoke-virtual {p0}, Lcom/miui/maml/data/DateTimeVariableUpdater;->getContext()Lcom/miui/maml/ScreenContext;

    move-result-object p1

    iget-object p1, p1, Lcom/miui/maml/ScreenContext;->mVariables:Lcom/miui/maml/data/Variables;

    .line 137
    new-instance v1, Lcom/miui/maml/data/IndexedVariable;

    const-string v2, "year"

    invoke-direct {v1, v2, p1, v0}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    iput-object v1, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mYear:Lcom/miui/maml/data/IndexedVariable;

    .line 138
    new-instance v1, Lcom/miui/maml/data/IndexedVariable;

    const-string v2, "month"

    invoke-direct {v1, v2, p1, v0}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    iput-object v1, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mMonth:Lcom/miui/maml/data/IndexedVariable;

    .line 139
    new-instance v1, Lcom/miui/maml/data/IndexedVariable;

    const-string v2, "month1"

    invoke-direct {v1, v2, p1, v0}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    iput-object v1, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mMonth1:Lcom/miui/maml/data/IndexedVariable;

    .line 140
    new-instance v1, Lcom/miui/maml/data/IndexedVariable;

    const-string v2, "date"

    invoke-direct {v1, v2, p1, v0}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    iput-object v1, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mDate:Lcom/miui/maml/data/IndexedVariable;

    .line 142
    new-instance v1, Lcom/miui/maml/data/IndexedVariable;

    const-string v2, "year_lunar"

    invoke-direct {v1, v2, p1, v0}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    iput-object v1, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mYearLunar:Lcom/miui/maml/data/IndexedVariable;

    .line 143
    new-instance v1, Lcom/miui/maml/data/IndexedVariable;

    const-string v2, "year_lunar1864"

    invoke-direct {v1, v2, p1, v0}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    iput-object v1, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mYearLunar1864:Lcom/miui/maml/data/IndexedVariable;

    .line 144
    new-instance v1, Lcom/miui/maml/data/IndexedVariable;

    const-string v2, "month_lunar"

    invoke-direct {v1, v2, p1, v0}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    iput-object v1, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mMonthLunar:Lcom/miui/maml/data/IndexedVariable;

    .line 145
    new-instance v1, Lcom/miui/maml/data/IndexedVariable;

    const-string v2, "month_lunar_leap"

    invoke-direct {v1, v2, p1, v0}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    iput-object v1, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mMonthLunarLeap:Lcom/miui/maml/data/IndexedVariable;

    .line 146
    new-instance v1, Lcom/miui/maml/data/IndexedVariable;

    const-string v2, "date_lunar"

    invoke-direct {v1, v2, p1, v0}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    iput-object v1, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mDateLunar:Lcom/miui/maml/data/IndexedVariable;

    .line 148
    new-instance v1, Lcom/miui/maml/data/IndexedVariable;

    const-string v2, "day_of_week"

    invoke-direct {v1, v2, p1, v0}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    iput-object v1, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mDayOfWeek:Lcom/miui/maml/data/IndexedVariable;

    .line 149
    new-instance v1, Lcom/miui/maml/data/IndexedVariable;

    const-string v2, "ampm"

    invoke-direct {v1, v2, p1, v0}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    iput-object v1, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mAmPm:Lcom/miui/maml/data/IndexedVariable;

    .line 150
    new-instance v1, Lcom/miui/maml/data/IndexedVariable;

    const-string v2, "hour12"

    invoke-direct {v1, v2, p1, v0}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    iput-object v1, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mHour12:Lcom/miui/maml/data/IndexedVariable;

    .line 151
    new-instance v1, Lcom/miui/maml/data/IndexedVariable;

    const-string v2, "hour24"

    invoke-direct {v1, v2, p1, v0}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    iput-object v1, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mHour24:Lcom/miui/maml/data/IndexedVariable;

    .line 152
    new-instance v1, Lcom/miui/maml/data/IndexedVariable;

    const-string v2, "minute"

    invoke-direct {v1, v2, p1, v0}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    iput-object v1, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mMinute:Lcom/miui/maml/data/IndexedVariable;

    .line 153
    new-instance v1, Lcom/miui/maml/data/IndexedVariable;

    const-string v2, "second"

    invoke-direct {v1, v2, p1, v0}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    iput-object v1, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mSecond:Lcom/miui/maml/data/IndexedVariable;

    .line 154
    new-instance v1, Lcom/miui/maml/data/IndexedVariable;

    const-string v2, "time"

    invoke-direct {v1, v2, p1, v0}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    iput-object v1, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mTime:Lcom/miui/maml/data/IndexedVariable;

    .line 155
    new-instance v1, Lcom/miui/maml/data/IndexedVariable;

    const-string v2, "time_sys"

    invoke-direct {v1, v2, p1, v0}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    iput-object v1, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mTimeSys:Lcom/miui/maml/data/IndexedVariable;

    .line 156
    iget-object v1, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mTimeSys:Lcom/miui/maml/data/IndexedVariable;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    long-to-double v2, v2

    invoke-virtual {v1, v2, v3}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 157
    new-instance v1, Lcom/miui/maml/data/IndexedVariable;

    const/4 v2, 0x0

    const-string v3, "next_alarm_time"

    invoke-direct {v1, v3, p1, v2}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    iput-object v1, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mNextAlarm:Lcom/miui/maml/data/IndexedVariable;

    .line 159
    new-instance v1, Lcom/miui/maml/data/IndexedVariable;

    const-string v2, "time_format"

    invoke-direct {v1, v2, p1, v0}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    iput-object v1, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mTimeFormatVar:Lcom/miui/maml/data/IndexedVariable;

    return-void
.end method

.method private refreshAlarm()V
    .locals 2

    .line 218
    invoke-virtual {p0}, Lcom/miui/maml/data/DateTimeVariableUpdater;->getContext()Lcom/miui/maml/ScreenContext;

    move-result-object v0

    iget-object v0, v0, Lcom/miui/maml/ScreenContext;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "next_alarm_clock_formatted"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 222
    invoke-virtual {p0}, Lcom/miui/maml/data/DateTimeVariableUpdater;->getContext()Lcom/miui/maml/ScreenContext;

    move-result-object v0

    iget-object v0, v0, Lcom/miui/maml/ScreenContext;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    .line 226
    invoke-virtual {p0}, Lcom/miui/maml/data/DateTimeVariableUpdater;->getContext()Lcom/miui/maml/ScreenContext;

    move-result-object v0

    iget-object v0, v0, Lcom/miui/maml/ScreenContext;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "next_alarm_formatted"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 229
    :cond_1
    iget-object p0, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mNextAlarm:Lcom/miui/maml/data/IndexedVariable;

    invoke-virtual {p0, v0}, Lcom/miui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    return-void
.end method

.method private updateTime()V
    .locals 11

    .line 266
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 267
    iget-object v2, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mTimeSys:Lcom/miui/maml/data/IndexedVariable;

    long-to-double v3, v0

    invoke-virtual {v2, v3, v4}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    const-wide/16 v2, 0x3e8

    .line 269
    div-long v2, v0, v2

    .line 270
    iget-wide v4, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mLastUpdatedTime:J

    cmp-long v4, v2, v4

    if-eqz v4, :cond_1

    .line 271
    iget-object v4, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    invoke-virtual {v4, v0, v1}, Lmiuix/pickerwidget/date/Calendar;->setTimeInMillis(J)Lmiuix/pickerwidget/date/Calendar;

    .line 273
    iget-object v0, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    move-result v0

    .line 274
    iget-object v4, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    const/4 v5, 0x5

    invoke-virtual {v4, v5}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    move-result v4

    .line 275
    iget-object v5, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    const/16 v6, 0x9

    invoke-virtual {v5, v6}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    move-result v5

    .line 276
    iget-object v6, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mAmPm:Lcom/miui/maml/data/IndexedVariable;

    iget-object v7, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    const/16 v8, 0x11

    invoke-virtual {v7, v8}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    move-result v7

    int-to-double v7, v7

    invoke-virtual {v6, v7, v8}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 277
    iget-object v6, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mHour24:Lcom/miui/maml/data/IndexedVariable;

    iget-object v7, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    const/16 v8, 0x12

    invoke-virtual {v7, v8}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    move-result v7

    int-to-double v9, v7

    invoke-virtual {v6, v9, v10}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 278
    iget-object v6, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    invoke-virtual {v6, v8}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    move-result v6

    rem-int/lit8 v6, v6, 0xc

    .line 279
    iget-object v7, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mHour12:Lcom/miui/maml/data/IndexedVariable;

    if-nez v6, :cond_0

    const-wide/high16 v8, 0x4028000000000000L    # 12.0

    goto :goto_0

    :cond_0
    int-to-double v8, v6

    :goto_0
    invoke-virtual {v7, v8, v9}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 280
    iget-object v6, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mMinute:Lcom/miui/maml/data/IndexedVariable;

    iget-object v7, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    const/16 v8, 0x14

    invoke-virtual {v7, v8}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    move-result v7

    int-to-double v7, v7

    invoke-virtual {v6, v7, v8}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 281
    iget-object v6, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mYear:Lcom/miui/maml/data/IndexedVariable;

    int-to-double v7, v0

    invoke-virtual {v6, v7, v8}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 282
    iget-object v0, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mMonth:Lcom/miui/maml/data/IndexedVariable;

    int-to-double v6, v4

    invoke-virtual {v0, v6, v7}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 283
    iget-object v0, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mMonth1:Lcom/miui/maml/data/IndexedVariable;

    add-int/2addr v4, v1

    int-to-double v6, v4

    invoke-virtual {v0, v6, v7}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 284
    iget-object v0, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mDate:Lcom/miui/maml/data/IndexedVariable;

    int-to-double v4, v5

    invoke-virtual {v0, v4, v5}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 286
    iget-object v0, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mDayOfWeek:Lcom/miui/maml/data/IndexedVariable;

    iget-object v1, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    const/16 v4, 0xe

    invoke-virtual {v1, v4}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    move-result v1

    int-to-double v4, v1

    invoke-virtual {v0, v4, v5}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 287
    iget-object v0, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mSecond:Lcom/miui/maml/data/IndexedVariable;

    iget-object v1, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    const/16 v4, 0x15

    invoke-virtual {v1, v4}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    move-result v1

    int-to-double v4, v1

    invoke-virtual {v0, v4, v5}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 289
    iget-object v0, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mYearLunar:Lcom/miui/maml/data/IndexedVariable;

    iget-object v1, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    const/4 v4, 0x2

    invoke-virtual {v1, v4}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    move-result v1

    int-to-double v4, v1

    invoke-virtual {v0, v4, v5}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 290
    iget-object v0, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mMonthLunar:Lcom/miui/maml/data/IndexedVariable;

    iget-object v1, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    const/4 v4, 0x6

    invoke-virtual {v1, v4}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    move-result v1

    int-to-double v4, v1

    invoke-virtual {v0, v4, v5}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 291
    iget-object v0, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mDateLunar:Lcom/miui/maml/data/IndexedVariable;

    iget-object v1, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    const/16 v4, 0xa

    invoke-virtual {v1, v4}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    move-result v1

    int-to-double v4, v1

    invoke-virtual {v0, v4, v5}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 292
    iget-object v0, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mYearLunar1864:Lcom/miui/maml/data/IndexedVariable;

    iget-object v1, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    const/4 v4, 0x4

    invoke-virtual {v1, v4}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    move-result v1

    int-to-double v4, v1

    invoke-virtual {v0, v4, v5}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 293
    iget-object v0, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mMonthLunarLeap:Lcom/miui/maml/data/IndexedVariable;

    iget-object v1, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    move-result v1

    int-to-double v4, v1

    invoke-virtual {v0, v4, v5}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 295
    iput-wide v2, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mLastUpdatedTime:J

    :cond_1
    return-void
.end method


# virtual methods
.method public checkUpdateTime()V
    .locals 9

    .line 233
    iget-boolean v0, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mFinished:Z

    if-nez v0, :cond_6

    .line 234
    iget-object v0, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 235
    :try_start_0
    iget-boolean v1, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mFinished:Z

    if-eqz v1, :cond_0

    .line 236
    monitor-exit v0

    return-void

    .line 238
    :cond_0
    invoke-virtual {p0}, Lcom/miui/maml/data/DateTimeVariableUpdater;->getContext()Lcom/miui/maml/ScreenContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/maml/ScreenContext;->getHandler()Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mTimeUpdater:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 240
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 241
    iget-object v3, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    invoke-virtual {v3, v1, v2}, Lmiuix/pickerwidget/date/Calendar;->setTimeInMillis(J)Lmiuix/pickerwidget/date/Calendar;

    .line 243
    sget-object v3, Lcom/miui/maml/data/DateTimeVariableUpdater;->fields:[I

    array-length v4, v3

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-ge v6, v4, :cond_2

    aget v7, v3, v6

    .line 244
    iget v8, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mTimeAccuracyField:I

    if-ne v7, v8, :cond_1

    goto :goto_1

    .line 246
    :cond_1
    iget-object v8, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    invoke-virtual {v8, v7, v5}, Lmiuix/pickerwidget/date/Calendar;->set(II)Lmiuix/pickerwidget/date/Calendar;

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 249
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/miui/maml/data/DateTimeVariableUpdater;->getContext()Lcom/miui/maml/ScreenContext;

    move-result-object v3

    iget-object v3, v3, Lcom/miui/maml/ScreenContext;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v5, 0x1

    .line 252
    :cond_3
    iget-object v3, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    invoke-virtual {v3}, Lmiuix/pickerwidget/date/Calendar;->getTimeInMillis()J

    move-result-wide v3

    .line 253
    iget-wide v6, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mCurrentTime:J

    cmp-long v6, v6, v3

    if-nez v6, :cond_4

    iget v6, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mTimeFormat:I

    if-eq v6, v5, :cond_5

    .line 254
    :cond_4
    iput-wide v3, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mCurrentTime:J

    .line 255
    iget-wide v3, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mCurrentTime:J

    iget-wide v6, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mTimeAccuracy:J

    add-long/2addr v3, v6

    iput-wide v3, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mNextUpdateTime:J

    .line 256
    iput v5, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mTimeFormat:I

    .line 257
    iget-object v3, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mTimeFormatVar:Lcom/miui/maml/data/IndexedVariable;

    iget v4, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mTimeFormat:I

    int-to-double v4, v4

    invoke-virtual {v3, v4, v5}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 258
    invoke-virtual {p0}, Lcom/miui/maml/data/DateTimeVariableUpdater;->getRoot()Lcom/miui/maml/ScreenElementRoot;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/maml/ScreenElementRoot;->requestUpdate()V

    .line 260
    :cond_5
    invoke-virtual {p0}, Lcom/miui/maml/data/DateTimeVariableUpdater;->getContext()Lcom/miui/maml/ScreenContext;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/maml/ScreenContext;->getHandler()Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mTimeUpdater:Ljava/lang/Runnable;

    iget-wide v5, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mNextUpdateTime:J

    sub-long/2addr v5, v1

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 261
    monitor-exit v0

    goto :goto_2

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_6
    :goto_2
    return-void
.end method

.method public finish()V
    .locals 3

    .line 198
    iget-object v0, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 199
    :try_start_0
    invoke-super {p0}, Lcom/miui/maml/data/NotifierVariableUpdater;->finish()V

    const/4 v1, 0x1

    .line 200
    iput-boolean v1, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mFinished:Z

    const-wide/16 v1, 0x0

    .line 201
    iput-wide v1, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mLastUpdatedTime:J

    const/4 v1, 0x0

    .line 202
    sput-object v1, Lcom/miui/maml/data/DateTimeVariableUpdater;->sCalendar:Lmiuix/pickerwidget/date/Calendar;

    .line 203
    invoke-virtual {p0}, Lcom/miui/maml/data/DateTimeVariableUpdater;->getContext()Lcom/miui/maml/ScreenContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/maml/ScreenContext;->getHandler()Landroid/os/Handler;

    move-result-object v1

    iget-object p0, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mTimeUpdater:Ljava/lang/Runnable;

    invoke-virtual {v1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 204
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public init()V
    .locals 0

    .line 163
    invoke-super {p0}, Lcom/miui/maml/data/NotifierVariableUpdater;->init()V

    .line 165
    invoke-direct {p0}, Lcom/miui/maml/data/DateTimeVariableUpdater;->refreshAlarm()V

    .line 166
    invoke-direct {p0}, Lcom/miui/maml/data/DateTimeVariableUpdater;->updateTime()V

    .line 167
    invoke-virtual {p0}, Lcom/miui/maml/data/DateTimeVariableUpdater;->checkUpdateTime()V

    return-void
.end method

.method public onNotify(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/Object;)V
    .locals 0

    .line 301
    invoke-virtual {p0}, Lcom/miui/maml/data/DateTimeVariableUpdater;->resetCalendar()V

    .line 302
    invoke-virtual {p0}, Lcom/miui/maml/data/DateTimeVariableUpdater;->checkUpdateTime()V

    return-void
.end method

.method public pause()V
    .locals 1

    .line 193
    invoke-super {p0}, Lcom/miui/maml/data/NotifierVariableUpdater;->pause()V

    .line 194
    invoke-virtual {p0}, Lcom/miui/maml/data/DateTimeVariableUpdater;->getContext()Lcom/miui/maml/ScreenContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/maml/ScreenContext;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mTimeUpdater:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected resetCalendar()V
    .locals 1

    .line 186
    new-instance v0, Lmiuix/pickerwidget/date/Calendar;

    invoke-direct {v0}, Lmiuix/pickerwidget/date/Calendar;-><init>()V

    iput-object v0, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    .line 187
    sget-object p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->sCalendar:Lmiuix/pickerwidget/date/Calendar;

    if-eqz p0, :cond_0

    .line 188
    new-instance p0, Lmiuix/pickerwidget/date/Calendar;

    invoke-direct {p0}, Lmiuix/pickerwidget/date/Calendar;-><init>()V

    sput-object p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->sCalendar:Lmiuix/pickerwidget/date/Calendar;

    :cond_0
    return-void
.end method

.method public resume()V
    .locals 0

    .line 177
    invoke-super {p0}, Lcom/miui/maml/data/NotifierVariableUpdater;->resume()V

    .line 178
    invoke-direct {p0}, Lcom/miui/maml/data/DateTimeVariableUpdater;->refreshAlarm()V

    .line 181
    invoke-virtual {p0}, Lcom/miui/maml/data/DateTimeVariableUpdater;->resetCalendar()V

    .line 182
    invoke-virtual {p0}, Lcom/miui/maml/data/DateTimeVariableUpdater;->checkUpdateTime()V

    return-void
.end method

.method public tick(J)V
    .locals 1

    .line 171
    invoke-super {p0, p1, p2}, Lcom/miui/maml/data/NotifierVariableUpdater;->tick(J)V

    .line 172
    iget-object v0, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mTime:Lcom/miui/maml/data/IndexedVariable;

    long-to-double p1, p1

    invoke-virtual {v0, p1, p2}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 173
    invoke-direct {p0}, Lcom/miui/maml/data/DateTimeVariableUpdater;->updateTime()V

    return-void
.end method
