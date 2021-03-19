.class Lcom/miui/maml/elements/DateTimeScreenElement$DateFormatter;
.super Ljava/lang/Object;
.source "DateTimeScreenElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/elements/DateTimeScreenElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DateFormatter"
.end annotation


# instance fields
.field private mCalendar:Lmiui/date/Calendar;

.field private mCurDay:I

.field private mLunarDate:Ljava/lang/String;

.field private mOldFormat:Ljava/lang/String;

.field private mPreValue:J

.field private mText:Ljava/lang/String;

.field private mTextFormatter:Lcom/miui/maml/util/TextFormatter;

.field private mTimeZoneExp:Lcom/miui/maml/data/Expression;

.field private mValueExp:Lcom/miui/maml/data/Expression;

.field final synthetic this$0:Lcom/miui/maml/elements/DateTimeScreenElement;


# direct methods
.method public constructor <init>(Lcom/miui/maml/elements/DateTimeScreenElement;Lcom/miui/maml/util/TextFormatter;Lcom/miui/maml/data/Expression;)V
    .locals 1

    const/4 v0, 0x0

    .line 40
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/miui/maml/elements/DateTimeScreenElement$DateFormatter;-><init>(Lcom/miui/maml/elements/DateTimeScreenElement;Lcom/miui/maml/util/TextFormatter;Lcom/miui/maml/data/Expression;Lcom/miui/maml/data/Expression;)V

    return-void
.end method

.method public constructor <init>(Lcom/miui/maml/elements/DateTimeScreenElement;Lcom/miui/maml/util/TextFormatter;Lcom/miui/maml/data/Expression;Lcom/miui/maml/data/Expression;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/miui/maml/elements/DateTimeScreenElement$DateFormatter;->this$0:Lcom/miui/maml/elements/DateTimeScreenElement;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance p1, Lmiui/date/Calendar;

    invoke-direct {p1}, Lmiui/date/Calendar;-><init>()V

    iput-object p1, p0, Lcom/miui/maml/elements/DateTimeScreenElement$DateFormatter;->mCalendar:Lmiui/date/Calendar;

    const/4 p1, -0x1

    .line 27
    iput p1, p0, Lcom/miui/maml/elements/DateTimeScreenElement$DateFormatter;->mCurDay:I

    .line 44
    iput-object p2, p0, Lcom/miui/maml/elements/DateTimeScreenElement$DateFormatter;->mTextFormatter:Lcom/miui/maml/util/TextFormatter;

    .line 45
    iput-object p3, p0, Lcom/miui/maml/elements/DateTimeScreenElement$DateFormatter;->mValueExp:Lcom/miui/maml/data/Expression;

    .line 46
    iput-object p4, p0, Lcom/miui/maml/elements/DateTimeScreenElement$DateFormatter;->mTimeZoneExp:Lcom/miui/maml/data/Expression;

    return-void
.end method


# virtual methods
.method public getText()Ljava/lang/String;
    .locals 7

    .line 50
    iget-object v0, p0, Lcom/miui/maml/elements/DateTimeScreenElement$DateFormatter;->mTextFormatter:Lcom/miui/maml/util/TextFormatter;

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    .line 53
    :cond_0
    invoke-virtual {v0}, Lcom/miui/maml/util/TextFormatter;->getFormat()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, ""

    return-object v0

    .line 58
    :cond_1
    iget-object v1, p0, Lcom/miui/maml/elements/DateTimeScreenElement$DateFormatter;->mValueExp:Lcom/miui/maml/data/Expression;

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/miui/maml/elements/DateTimeScreenElement$DateFormatter;->this$0:Lcom/miui/maml/elements/DateTimeScreenElement;

    invoke-virtual {v2, v1}, Lcom/miui/maml/elements/DateTimeScreenElement;->evaluate(Lcom/miui/maml/data/Expression;)D

    move-result-wide v1

    double-to-long v1, v1

    goto :goto_0

    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 59
    :goto_0
    iget-object v3, p0, Lcom/miui/maml/elements/DateTimeScreenElement$DateFormatter;->mOldFormat:Ljava/lang/String;

    invoke-static {v3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-wide v3, p0, Lcom/miui/maml/elements/DateTimeScreenElement$DateFormatter;->mPreValue:J

    sub-long v3, v1, v3

    .line 60
    invoke-static {v3, v4}, Ljava/lang/Math;->abs(J)J

    move-result-wide v3

    const-wide/16 v5, 0xc8

    cmp-long v3, v3, v5

    if-gez v3, :cond_3

    .line 62
    iget-object v0, p0, Lcom/miui/maml/elements/DateTimeScreenElement$DateFormatter;->mText:Ljava/lang/String;

    return-object v0

    .line 65
    :cond_3
    iput-object v0, p0, Lcom/miui/maml/elements/DateTimeScreenElement$DateFormatter;->mOldFormat:Ljava/lang/String;

    .line 66
    iget-object v3, p0, Lcom/miui/maml/elements/DateTimeScreenElement$DateFormatter;->mCalendar:Lmiui/date/Calendar;

    invoke-virtual {v3, v1, v2}, Lmiui/date/Calendar;->setTimeInMillis(J)Lmiui/date/Calendar;

    .line 67
    iget-object v3, p0, Lcom/miui/maml/elements/DateTimeScreenElement$DateFormatter;->mTimeZoneExp:Lcom/miui/maml/data/Expression;

    if-eqz v3, :cond_4

    .line 68
    invoke-virtual {v3}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object v3

    .line 69
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 70
    iget-object v4, p0, Lcom/miui/maml/elements/DateTimeScreenElement$DateFormatter;->mCalendar:Lmiui/date/Calendar;

    invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    invoke-virtual {v4, v3}, Lmiui/date/Calendar;->setTimeZone(Ljava/util/TimeZone;)Lmiui/date/Calendar;

    :cond_4
    const-string v3, "NNNN"

    .line 74
    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 75
    iget-object v3, p0, Lcom/miui/maml/elements/DateTimeScreenElement$DateFormatter;->mCalendar:Lmiui/date/Calendar;

    const/16 v4, 0x9

    invoke-virtual {v3, v4}, Lmiui/date/Calendar;->get(I)I

    move-result v3

    iget v5, p0, Lcom/miui/maml/elements/DateTimeScreenElement$DateFormatter;->mCurDay:I

    if-eq v3, v5, :cond_6

    .line 76
    iget-object v3, p0, Lcom/miui/maml/elements/DateTimeScreenElement$DateFormatter;->mCalendar:Lmiui/date/Calendar;

    const-string v5, "N\u6708e"

    invoke-virtual {v3, v5}, Lmiui/date/Calendar;->format(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/maml/elements/DateTimeScreenElement$DateFormatter;->mLunarDate:Ljava/lang/String;

    .line 77
    iget-object v3, p0, Lcom/miui/maml/elements/DateTimeScreenElement$DateFormatter;->mCalendar:Lmiui/date/Calendar;

    const-string v5, "t"

    invoke-virtual {v3, v5}, Lmiui/date/Calendar;->format(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 79
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/miui/maml/elements/DateTimeScreenElement$DateFormatter;->mLunarDate:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/maml/elements/DateTimeScreenElement$DateFormatter;->mLunarDate:Ljava/lang/String;

    .line 81
    :cond_5
    iget-object v3, p0, Lcom/miui/maml/elements/DateTimeScreenElement$DateFormatter;->mCalendar:Lmiui/date/Calendar;

    invoke-virtual {v3, v4}, Lmiui/date/Calendar;->get(I)I

    move-result v3

    iput v3, p0, Lcom/miui/maml/elements/DateTimeScreenElement$DateFormatter;->mCurDay:I

    const-string v3, "DateTimeScreenElement"

    .line 82
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "get lunar date:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/miui/maml/elements/DateTimeScreenElement$DateFormatter;->mLunarDate:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    const-string v3, "NNNN"

    .line 84
    iget-object v4, p0, Lcom/miui/maml/elements/DateTimeScreenElement$DateFormatter;->mLunarDate:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 86
    :cond_7
    iget-object v3, p0, Lcom/miui/maml/elements/DateTimeScreenElement$DateFormatter;->mCalendar:Lmiui/date/Calendar;

    invoke-virtual {v3, v0}, Lmiui/date/Calendar;->format(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/maml/elements/DateTimeScreenElement$DateFormatter;->mText:Ljava/lang/String;

    .line 87
    iput-wide v1, p0, Lcom/miui/maml/elements/DateTimeScreenElement$DateFormatter;->mPreValue:J

    .line 88
    iget-object v0, p0, Lcom/miui/maml/elements/DateTimeScreenElement$DateFormatter;->mText:Ljava/lang/String;

    return-object v0
.end method

.method public resetCalendar()V
    .locals 1

    .line 92
    new-instance v0, Lmiui/date/Calendar;

    invoke-direct {v0}, Lmiui/date/Calendar;-><init>()V

    iput-object v0, p0, Lcom/miui/maml/elements/DateTimeScreenElement$DateFormatter;->mCalendar:Lmiui/date/Calendar;

    return-void
.end method
