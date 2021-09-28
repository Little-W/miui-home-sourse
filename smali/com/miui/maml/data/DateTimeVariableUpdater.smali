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

    .line 24
    new-array v0, v0, [I

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

    .line 84
    sget-object v0, Lcom/miui/maml/data/DateTimeVariableUpdater$Accuracy;->Minute:Lcom/miui/maml/data/DateTimeVariableUpdater$Accuracy;

    invoke-direct {p0, p1, v0}, Lcom/miui/maml/data/DateTimeVariableUpdater;-><init>(Lcom/miui/maml/data/VariableUpdaterManager;Lcom/miui/maml/data/DateTimeVariableUpdater$Accuracy;)V

    return-void
.end method

.method public constructor <init>(Lcom/miui/maml/data/VariableUpdaterManager;Lcom/miui/maml/data/DateTimeVariableUpdater$Accuracy;)V
    .locals 1

    .line 105
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

    .line 106
    invoke-direct {p0, p2}, Lcom/miui/maml/data/DateTimeVariableUpdater;->initInner(Lcom/miui/maml/data/DateTimeVariableUpdater$Accuracy;)V

    return-void
.end method

.method public constructor <init>(Lcom/miui/maml/data/VariableUpdaterManager;Ljava/lang/String;)V
    .locals 5

    .line 88
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

    .line 89
    new-instance p1, Lcom/miui/maml/data/TimeUpdater;

    invoke-direct {p1, p0}, Lcom/miui/maml/data/TimeUpdater;-><init>(Lcom/miui/maml/data/DateTimeVariableUpdater;)V

    iput-object p1, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mTimeUpdater:Ljava/lang/Runnable;

    .line 91
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 92
    invoke-static {}, Lcom/miui/maml/data/DateTimeVariableUpdater$Accuracy;->values()[Lcom/miui/maml/data/DateTimeVariableUpdater$Accuracy;

    move-result-object p1

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p1, v2

    .line 93
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

    .line 98
    sget-object v0, Lcom/miui/maml/data/DateTimeVariableUpdater$Accuracy;->Minute:Lcom/miui/maml/data/DateTimeVariableUpdater$Accuracy;

    const-string p1, "DateTimeVariableUpdater"

    .line 99
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid accuracy tag:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    :cond_2
    invoke-direct {p0, v0}, Lcom/miui/maml/data/DateTimeVariableUpdater;->initInner(Lcom/miui/maml/data/DateTimeVariableUpdater$Accuracy;)V

    return-void
.end method

.method public static formatDate(Ljava/lang/CharSequence;J)Ljava/lang/String;
    .locals 1

    .line 207
    sget-object v0, Lcom/miui/maml/data/DateTimeVariableUpdater;->sCalendar:Lmiuix/pickerwidget/date/Calendar;

    if-nez v0, :cond_0

    .line 208
    new-instance v0, Lmiuix/pickerwidget/date/Calendar;

    invoke-direct {v0}, Lmiuix/pickerwidget/date/Calendar;-><init>()V

    sput-object v0, Lcom/miui/maml/data/DateTimeVariableUpdater;->sCalendar:Lmiuix/pickerwidget/date/Calendar;

    .line 210
    :cond_0
    sget-object v0, Lcom/miui/maml/data/DateTimeVariableUpdater;->sCalendar:Lmiuix/pickerwidget/date/Calendar;

    invoke-virtual {v0, p1, p2}, Lmiuix/pickerwidget/date/Calendar;->setTimeInMillis(J)Lmiuix/pickerwidget/date/Calendar;

    .line 211
    sget-object p1, Lcom/miui/maml/data/DateTimeVariableUpdater;->sCalendar:Lmiuix/pickerwidget/date/Calendar;

    invoke-static {}, Lcom/miui/maml/util/Utils;->getAppContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p1, p2, p0}, Lmiuix/pickerwidget/date/Calendar;->format(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private initInner(Lcom/miui/maml/data/DateTimeVariableUpdater$Accuracy;)V
    .locals 5

    const-string v0, "DateTimeVariableUpdater"

    .line 110
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init with accuracy:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/miui/maml/data/DateTimeVariableUpdater$Accuracy;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    sget-object v0, Lcom/miui/maml/data/DateTimeVariableUpdater$1;->$SwitchMap$com$miui$maml$data$DateTimeVariableUpdater$Accuracy:[I

    invoke-virtual {p1}, Lcom/miui/maml/data/DateTimeVariableUpdater$Accuracy;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/16 v0, 0x14

    const-wide/32 v1, 0xea60

    packed-switch p1, :pswitch_data_0

    .line 129
    iput-wide v1, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mTimeAccuracy:J

    .line 130
    iput v0, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mTimeAccuracyField:I

    goto :goto_0

    :pswitch_0
    const-wide/16 v0, 0x3e8

    .line 125
    iput-wide v0, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mTimeAccuracy:J

    const/16 p1, 0x15

    .line 126
    iput p1, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mTimeAccuracyField:I

    goto :goto_0

    .line 121
    :pswitch_1
    iput-wide v1, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mTimeAccuracy:J

    .line 122
    iput v0, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mTimeAccuracyField:I

    goto :goto_0

    :pswitch_2
    const-wide/32 v0, 0x36ee80

    .line 117
    iput-wide v0, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mTimeAccuracy:J

    const/16 p1, 0x12

    .line 118
    iput p1, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mTimeAccuracyField:I

    goto :goto_0

    :pswitch_3
    const-wide/32 v0, 0x5265c00

    .line 113
    iput-wide v0, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mTimeAccuracy:J

    const/16 p1, 0x9

    .line 114
    iput p1, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mTimeAccuracyField:I

    .line 134
    :goto_0
    invoke-virtual {p0}, Lcom/miui/maml/data/DateTimeVariableUpdater;->getContext()Lcom/miui/maml/ScreenContext;

    move-result-object p1

    iget-object p1, p1, Lcom/miui/maml/ScreenContext;->mVariables:Lcom/miui/maml/data/Variables;

    .line 135
    new-instance v0, Lcom/miui/maml/data/IndexedVariable;

    const-string/jumbo v1, "year"

    const/4 v2, 0x1

    invoke-direct {v0, v1, p1, v2}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    iput-object v0, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mYear:Lcom/miui/maml/data/IndexedVariable;

    .line 136
    new-instance v0, Lcom/miui/maml/data/IndexedVariable;

    const-string v1, "month"

    invoke-direct {v0, v1, p1, v2}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    iput-object v0, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mMonth:Lcom/miui/maml/data/IndexedVariable;

    .line 137
    new-instance v0, Lcom/miui/maml/data/IndexedVariable;

    const-string v1, "month1"

    invoke-direct {v0, v1, p1, v2}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    iput-object v0, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mMonth1:Lcom/miui/maml/data/IndexedVariable;

    .line 138
    new-instance v0, Lcom/miui/maml/data/IndexedVariable;

    const-string v1, "date"

    invoke-direct {v0, v1, p1, v2}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    iput-object v0, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mDate:Lcom/miui/maml/data/IndexedVariable;

    .line 140
    new-instance v0, Lcom/miui/maml/data/IndexedVariable;

    const-string/jumbo v1, "year_lunar"

    invoke-direct {v0, v1, p1, v2}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    iput-object v0, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mYearLunar:Lcom/miui/maml/data/IndexedVariable;

    .line 141
    new-instance v0, Lcom/miui/maml/data/IndexedVariable;

    const-string/jumbo v1, "year_lunar1864"

    invoke-direct {v0, v1, p1, v2}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    iput-object v0, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mYearLunar1864:Lcom/miui/maml/data/IndexedVariable;

    .line 142
    new-instance v0, Lcom/miui/maml/data/IndexedVariable;

    const-string v1, "month_lunar"

    invoke-direct {v0, v1, p1, v2}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    iput-object v0, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mMonthLunar:Lcom/miui/maml/data/IndexedVariable;

    .line 143
    new-instance v0, Lcom/miui/maml/data/IndexedVariable;

    const-string v1, "month_lunar_leap"

    invoke-direct {v0, v1, p1, v2}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    iput-object v0, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mMonthLunarLeap:Lcom/miui/maml/data/IndexedVariable;

    .line 144
    new-instance v0, Lcom/miui/maml/data/IndexedVariable;

    const-string v1, "date_lunar"

    invoke-direct {v0, v1, p1, v2}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    iput-object v0, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mDateLunar:Lcom/miui/maml/data/IndexedVariable;

    .line 146
    new-instance v0, Lcom/miui/maml/data/IndexedVariable;

    const-string v1, "day_of_week"

    invoke-direct {v0, v1, p1, v2}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    iput-object v0, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mDayOfWeek:Lcom/miui/maml/data/IndexedVariable;

    .line 147
    new-instance v0, Lcom/miui/maml/data/IndexedVariable;

    const-string v1, "ampm"

    invoke-direct {v0, v1, p1, v2}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    iput-object v0, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mAmPm:Lcom/miui/maml/data/IndexedVariable;

    .line 148
    new-instance v0, Lcom/miui/maml/data/IndexedVariable;

    const-string v1, "hour12"

    invoke-direct {v0, v1, p1, v2}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    iput-object v0, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mHour12:Lcom/miui/maml/data/IndexedVariable;

    .line 149
    new-instance v0, Lcom/miui/maml/data/IndexedVariable;

    const-string v1, "hour24"

    invoke-direct {v0, v1, p1, v2}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    iput-object v0, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mHour24:Lcom/miui/maml/data/IndexedVariable;

    .line 150
    new-instance v0, Lcom/miui/maml/data/IndexedVariable;

    const-string v1, "minute"

    invoke-direct {v0, v1, p1, v2}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    iput-object v0, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mMinute:Lcom/miui/maml/data/IndexedVariable;

    .line 151
    new-instance v0, Lcom/miui/maml/data/IndexedVariable;

    const-string v1, "second"

    invoke-direct {v0, v1, p1, v2}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    iput-object v0, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mSecond:Lcom/miui/maml/data/IndexedVariable;

    .line 152
    new-instance v0, Lcom/miui/maml/data/IndexedVariable;

    const-string v1, "time"

    invoke-direct {v0, v1, p1, v2}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    iput-object v0, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mTime:Lcom/miui/maml/data/IndexedVariable;

    .line 153
    new-instance v0, Lcom/miui/maml/data/IndexedVariable;

    const-string v1, "time_sys"

    invoke-direct {v0, v1, p1, v2}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    iput-object v0, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mTimeSys:Lcom/miui/maml/data/IndexedVariable;

    .line 154
    iget-object v0, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mTimeSys:Lcom/miui/maml/data/IndexedVariable;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    long-to-double v3, v3

    invoke-virtual {v0, v3, v4}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 155
    new-instance v0, Lcom/miui/maml/data/IndexedVariable;

    const-string v1, "next_alarm_time"

    const/4 v3, 0x0

    invoke-direct {v0, v1, p1, v3}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    iput-object v0, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mNextAlarm:Lcom/miui/maml/data/IndexedVariable;

    .line 157
    new-instance v0, Lcom/miui/maml/data/IndexedVariable;

    const-string v1, "time_format"

    invoke-direct {v0, v1, p1, v2}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    iput-object v0, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mTimeFormatVar:Lcom/miui/maml/data/IndexedVariable;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private refreshAlarm()V
    .locals 2

    .line 215
    invoke-virtual {p0}, Lcom/miui/maml/data/DateTimeVariableUpdater;->getContext()Lcom/miui/maml/ScreenContext;

    move-result-object v0

    iget-object v0, v0, Lcom/miui/maml/ScreenContext;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "next_alarm_formatted"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 217
    iget-object v1, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mNextAlarm:Lcom/miui/maml/data/IndexedVariable;

    invoke-virtual {v1, v0}, Lcom/miui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    return-void
.end method

.method private updateTime()V
    .locals 11

    .line 254
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 255
    iget-object v2, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mTimeSys:Lcom/miui/maml/data/IndexedVariable;

    long-to-double v3, v0

    invoke-virtual {v2, v3, v4}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    const-wide/16 v2, 0x3e8

    .line 257
    div-long v2, v0, v2

    .line 258
    iget-wide v4, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mLastUpdatedTime:J

    cmp-long v4, v2, v4

    if-eqz v4, :cond_1

    .line 259
    iget-object v4, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    invoke-virtual {v4, v0, v1}, Lmiuix/pickerwidget/date/Calendar;->setTimeInMillis(J)Lmiuix/pickerwidget/date/Calendar;

    .line 261
    iget-object v0, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    move-result v0

    .line 262
    iget-object v4, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    const/4 v5, 0x5

    invoke-virtual {v4, v5}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    move-result v4

    .line 263
    iget-object v5, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    const/16 v6, 0x9

    invoke-virtual {v5, v6}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    move-result v5

    .line 264
    iget-object v6, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mAmPm:Lcom/miui/maml/data/IndexedVariable;

    iget-object v7, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    const/16 v8, 0x11

    invoke-virtual {v7, v8}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    move-result v7

    int-to-double v7, v7

    invoke-virtual {v6, v7, v8}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 265
    iget-object v6, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mHour24:Lcom/miui/maml/data/IndexedVariable;

    iget-object v7, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    const/16 v8, 0x12

    invoke-virtual {v7, v8}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    move-result v7

    int-to-double v9, v7

    invoke-virtual {v6, v9, v10}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 266
    iget-object v6, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    invoke-virtual {v6, v8}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    move-result v6

    rem-int/lit8 v6, v6, 0xc

    .line 267
    iget-object v7, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mHour12:Lcom/miui/maml/data/IndexedVariable;

    if-nez v6, :cond_0

    const-wide/high16 v8, 0x4028000000000000L    # 12.0

    goto :goto_0

    :cond_0
    int-to-double v8, v6

    :goto_0
    invoke-virtual {v7, v8, v9}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 268
    iget-object v6, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mMinute:Lcom/miui/maml/data/IndexedVariable;

    iget-object v7, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    const/16 v8, 0x14

    invoke-virtual {v7, v8}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    move-result v7

    int-to-double v7, v7

    invoke-virtual {v6, v7, v8}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 269
    iget-object v6, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mYear:Lcom/miui/maml/data/IndexedVariable;

    int-to-double v7, v0

    invoke-virtual {v6, v7, v8}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 270
    iget-object v0, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mMonth:Lcom/miui/maml/data/IndexedVariable;

    int-to-double v6, v4

    invoke-virtual {v0, v6, v7}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 271
    iget-object v0, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mMonth1:Lcom/miui/maml/data/IndexedVariable;

    add-int/2addr v4, v1

    int-to-double v6, v4

    invoke-virtual {v0, v6, v7}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 272
    iget-object v0, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mDate:Lcom/miui/maml/data/IndexedVariable;

    int-to-double v4, v5

    invoke-virtual {v0, v4, v5}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 274
    iget-object v0, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mDayOfWeek:Lcom/miui/maml/data/IndexedVariable;

    iget-object v1, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    const/16 v4, 0xe

    invoke-virtual {v1, v4}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    move-result v1

    int-to-double v4, v1

    invoke-virtual {v0, v4, v5}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 275
    iget-object v0, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mSecond:Lcom/miui/maml/data/IndexedVariable;

    iget-object v1, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    const/16 v4, 0x15

    invoke-virtual {v1, v4}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    move-result v1

    int-to-double v4, v1

    invoke-virtual {v0, v4, v5}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 277
    iget-object v0, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mYearLunar:Lcom/miui/maml/data/IndexedVariable;

    iget-object v1, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    const/4 v4, 0x2

    invoke-virtual {v1, v4}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    move-result v1

    int-to-double v4, v1

    invoke-virtual {v0, v4, v5}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 278
    iget-object v0, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mMonthLunar:Lcom/miui/maml/data/IndexedVariable;

    iget-object v1, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    const/4 v4, 0x6

    invoke-virtual {v1, v4}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    move-result v1

    int-to-double v4, v1

    invoke-virtual {v0, v4, v5}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 279
    iget-object v0, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mDateLunar:Lcom/miui/maml/data/IndexedVariable;

    iget-object v1, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    const/16 v4, 0xa

    invoke-virtual {v1, v4}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    move-result v1

    int-to-double v4, v1

    invoke-virtual {v0, v4, v5}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 280
    iget-object v0, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mYearLunar1864:Lcom/miui/maml/data/IndexedVariable;

    iget-object v1, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    const/4 v4, 0x4

    invoke-virtual {v1, v4}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    move-result v1

    int-to-double v4, v1

    invoke-virtual {v0, v4, v5}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 281
    iget-object v0, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mMonthLunarLeap:Lcom/miui/maml/data/IndexedVariable;

    iget-object v1, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    move-result v1

    int-to-double v4, v1

    invoke-virtual {v0, v4, v5}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 283
    iput-wide v2, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mLastUpdatedTime:J

    :cond_1
    return-void
.end method


# virtual methods
.method public checkUpdateTime()V
    .locals 9

    .line 221
    iget-boolean v0, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mFinished:Z

    if-nez v0, :cond_6

    .line 222
    iget-object v0, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 223
    :try_start_0
    iget-boolean v1, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mFinished:Z

    if-eqz v1, :cond_0

    .line 224
    monitor-exit v0

    return-void

    .line 226
    :cond_0
    invoke-virtual {p0}, Lcom/miui/maml/data/DateTimeVariableUpdater;->getContext()Lcom/miui/maml/ScreenContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/maml/ScreenContext;->getHandler()Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mTimeUpdater:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 228
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 229
    iget-object v3, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    invoke-virtual {v3, v1, v2}, Lmiuix/pickerwidget/date/Calendar;->setTimeInMillis(J)Lmiuix/pickerwidget/date/Calendar;

    .line 231
    sget-object v3, Lcom/miui/maml/data/DateTimeVariableUpdater;->fields:[I

    array-length v4, v3

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-ge v6, v4, :cond_2

    aget v7, v3, v6

    .line 232
    iget v8, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mTimeAccuracyField:I

    if-ne v7, v8, :cond_1

    goto :goto_1

    .line 234
    :cond_1
    iget-object v8, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    invoke-virtual {v8, v7, v5}, Lmiuix/pickerwidget/date/Calendar;->set(II)Lmiuix/pickerwidget/date/Calendar;

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 237
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/miui/maml/data/DateTimeVariableUpdater;->getContext()Lcom/miui/maml/ScreenContext;

    move-result-object v3

    iget-object v3, v3, Lcom/miui/maml/ScreenContext;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v5, 0x1

    .line 240
    :cond_3
    iget-object v3, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    invoke-virtual {v3}, Lmiuix/pickerwidget/date/Calendar;->getTimeInMillis()J

    move-result-wide v3

    .line 241
    iget-wide v6, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mCurrentTime:J

    cmp-long v6, v6, v3

    if-nez v6, :cond_4

    iget v6, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mTimeFormat:I

    if-eq v6, v5, :cond_5

    .line 242
    :cond_4
    iput-wide v3, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mCurrentTime:J

    .line 243
    iget-wide v3, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mCurrentTime:J

    iget-wide v6, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mTimeAccuracy:J

    add-long/2addr v3, v6

    iput-wide v3, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mNextUpdateTime:J

    .line 244
    iput v5, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mTimeFormat:I

    .line 245
    iget-object v3, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mTimeFormatVar:Lcom/miui/maml/data/IndexedVariable;

    iget v4, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mTimeFormat:I

    int-to-double v4, v4

    invoke-virtual {v3, v4, v5}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 246
    invoke-virtual {p0}, Lcom/miui/maml/data/DateTimeVariableUpdater;->getRoot()Lcom/miui/maml/ScreenElementRoot;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/maml/ScreenElementRoot;->requestUpdate()V

    .line 248
    :cond_5
    invoke-virtual {p0}, Lcom/miui/maml/data/DateTimeVariableUpdater;->getContext()Lcom/miui/maml/ScreenContext;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/maml/ScreenContext;->getHandler()Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mTimeUpdater:Ljava/lang/Runnable;

    iget-wide v5, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mNextUpdateTime:J

    sub-long/2addr v5, v1

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 249
    monitor-exit v0

    goto :goto_2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_6
    :goto_2
    return-void
.end method

.method public finish()V
    .locals 3

    .line 196
    iget-object v0, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 197
    :try_start_0
    invoke-super {p0}, Lcom/miui/maml/data/NotifierVariableUpdater;->finish()V

    const/4 v1, 0x1

    .line 198
    iput-boolean v1, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mFinished:Z

    const-wide/16 v1, 0x0

    .line 199
    iput-wide v1, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mLastUpdatedTime:J

    const/4 v1, 0x0

    .line 200
    sput-object v1, Lcom/miui/maml/data/DateTimeVariableUpdater;->sCalendar:Lmiuix/pickerwidget/date/Calendar;

    .line 201
    invoke-virtual {p0}, Lcom/miui/maml/data/DateTimeVariableUpdater;->getContext()Lcom/miui/maml/ScreenContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/maml/ScreenContext;->getHandler()Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mTimeUpdater:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 202
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public init()V
    .locals 0

    .line 161
    invoke-super {p0}, Lcom/miui/maml/data/NotifierVariableUpdater;->init()V

    .line 163
    invoke-direct {p0}, Lcom/miui/maml/data/DateTimeVariableUpdater;->refreshAlarm()V

    .line 164
    invoke-direct {p0}, Lcom/miui/maml/data/DateTimeVariableUpdater;->updateTime()V

    .line 165
    invoke-virtual {p0}, Lcom/miui/maml/data/DateTimeVariableUpdater;->checkUpdateTime()V

    return-void
.end method

.method public onNotify(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/Object;)V
    .locals 0

    .line 289
    invoke-virtual {p0}, Lcom/miui/maml/data/DateTimeVariableUpdater;->resetCalendar()V

    .line 290
    invoke-virtual {p0}, Lcom/miui/maml/data/DateTimeVariableUpdater;->checkUpdateTime()V

    return-void
.end method

.method public pause()V
    .locals 2

    .line 191
    invoke-super {p0}, Lcom/miui/maml/data/NotifierVariableUpdater;->pause()V

    .line 192
    invoke-virtual {p0}, Lcom/miui/maml/data/DateTimeVariableUpdater;->getContext()Lcom/miui/maml/ScreenContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/maml/ScreenContext;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mTimeUpdater:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected resetCalendar()V
    .locals 1

    .line 184
    new-instance v0, Lmiuix/pickerwidget/date/Calendar;

    invoke-direct {v0}, Lmiuix/pickerwidget/date/Calendar;-><init>()V

    iput-object v0, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    .line 185
    sget-object v0, Lcom/miui/maml/data/DateTimeVariableUpdater;->sCalendar:Lmiuix/pickerwidget/date/Calendar;

    if-eqz v0, :cond_0

    .line 186
    new-instance v0, Lmiuix/pickerwidget/date/Calendar;

    invoke-direct {v0}, Lmiuix/pickerwidget/date/Calendar;-><init>()V

    sput-object v0, Lcom/miui/maml/data/DateTimeVariableUpdater;->sCalendar:Lmiuix/pickerwidget/date/Calendar;

    :cond_0
    return-void
.end method

.method public resume()V
    .locals 0

    .line 175
    invoke-super {p0}, Lcom/miui/maml/data/NotifierVariableUpdater;->resume()V

    .line 176
    invoke-direct {p0}, Lcom/miui/maml/data/DateTimeVariableUpdater;->refreshAlarm()V

    .line 179
    invoke-virtual {p0}, Lcom/miui/maml/data/DateTimeVariableUpdater;->resetCalendar()V

    .line 180
    invoke-virtual {p0}, Lcom/miui/maml/data/DateTimeVariableUpdater;->checkUpdateTime()V

    return-void
.end method

.method public tick(J)V
    .locals 1

    .line 169
    invoke-super {p0, p1, p2}, Lcom/miui/maml/data/NotifierVariableUpdater;->tick(J)V

    .line 170
    iget-object v0, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mTime:Lcom/miui/maml/data/IndexedVariable;

    long-to-double p1, p1

    invoke-virtual {v0, p1, p2}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 171
    invoke-direct {p0}, Lcom/miui/maml/data/DateTimeVariableUpdater;->updateTime()V

    return-void
.end method
