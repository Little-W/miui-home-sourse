.class Lcom/miui/home/launcher/MiuiHomeLog$RecordedLogHelper;
.super Ljava/lang/Object;
.source "MiuiHomeLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/MiuiHomeLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RecordedLogHelper"
.end annotation


# instance fields
.field private mCurrentSavedLogNum:I

.field mDate:Ljava/util/Date;

.field mDateTimeFormatter:Ljava/time/format/DateTimeFormatter;

.field private mHead:Ljava/lang/String;

.field mSimpleDateFormat:Ljava/text/SimpleDateFormat;

.field private mStringBuilder:Ljava/lang/StringBuilder;

.field private mTag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/MiuiHomeLog$RecordedLogHelper;->mDate:Ljava/util/Date;

    const/4 v0, 0x0

    .line 66
    iput v0, p0, Lcom/miui/home/launcher/MiuiHomeLog$RecordedLogHelper;->mCurrentSavedLogNum:I

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/MiuiHomeLog$RecordedLogHelper;->mStringBuilder:Ljava/lang/StringBuilder;

    .line 80
    iput-object p1, p0, Lcom/miui/home/launcher/MiuiHomeLog$RecordedLogHelper;->mTag:Ljava/lang/String;

    .line 81
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1a

    if-lt p1, v0, :cond_0

    const-string p1, "mm:ss.SSS"

    .line 82
    invoke-static {p1}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object p1

    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/time/format/DateTimeFormatter;->withZone(Ljava/time/ZoneId;)Ljava/time/format/DateTimeFormatter;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/MiuiHomeLog$RecordedLogHelper;->mDateTimeFormatter:Ljava/time/format/DateTimeFormatter;

    goto :goto_0

    .line 84
    :cond_0
    new-instance p1, Ljava/text/SimpleDateFormat;

    const-string v0, "mm:ss.SSS"

    invoke-direct {p1, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/miui/home/launcher/MiuiHomeLog$RecordedLogHelper;->mSimpleDateFormat:Ljava/text/SimpleDateFormat;

    :goto_0
    return-void
.end method


# virtual methods
.method public addMessage(Ljava/lang/String;)V
    .locals 4

    .line 96
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 97
    iget v2, p0, Lcom/miui/home/launcher/MiuiHomeLog$RecordedLogHelper;->mCurrentSavedLogNum:I

    const/16 v3, 0x32

    if-le v2, v3, :cond_0

    .line 98
    invoke-virtual {p0}, Lcom/miui/home/launcher/MiuiHomeLog$RecordedLogHelper;->printAll()V

    .line 100
    :cond_0
    iget v2, p0, Lcom/miui/home/launcher/MiuiHomeLog$RecordedLogHelper;->mCurrentSavedLogNum:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/miui/home/launcher/MiuiHomeLog$RecordedLogHelper;->mCurrentSavedLogNum:I

    .line 101
    iget-object v2, p0, Lcom/miui/home/launcher/MiuiHomeLog$RecordedLogHelper;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/MiuiHomeLog$RecordedLogHelper;->getDateToString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public getDateToString(J)Ljava/lang/String;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/miui/home/launcher/MiuiHomeLog$RecordedLogHelper;->mDate:Ljava/util/Date;

    invoke-virtual {v0, p1, p2}, Ljava/util/Date;->setTime(J)V

    .line 72
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x1a

    if-lt p1, p2, :cond_0

    .line 73
    iget-object p1, p0, Lcom/miui/home/launcher/MiuiHomeLog$RecordedLogHelper;->mDateTimeFormatter:Ljava/time/format/DateTimeFormatter;

    iget-object p2, p0, Lcom/miui/home/launcher/MiuiHomeLog$RecordedLogHelper;->mDate:Ljava/util/Date;

    invoke-virtual {p2}, Ljava/util/Date;->toInstant()Ljava/time/Instant;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/time/format/DateTimeFormatter;->format(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 75
    :cond_0
    iget-object p1, p0, Lcom/miui/home/launcher/MiuiHomeLog$RecordedLogHelper;->mSimpleDateFormat:Ljava/text/SimpleDateFormat;

    iget-object p2, p0, Lcom/miui/home/launcher/MiuiHomeLog$RecordedLogHelper;->mDate:Ljava/util/Date;

    invoke-virtual {p1, p2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public printAll()V
    .locals 3

    .line 106
    iget-object v0, p0, Lcom/miui/home/launcher/MiuiHomeLog$RecordedLogHelper;->mTag:Ljava/lang/String;

    iget-object v1, p0, Lcom/miui/home/launcher/MiuiHomeLog$RecordedLogHelper;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    iget-object v0, p0, Lcom/miui/home/launcher/MiuiHomeLog$RecordedLogHelper;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 108
    iget-object v0, p0, Lcom/miui/home/launcher/MiuiHomeLog$RecordedLogHelper;->mHead:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/miui/home/launcher/MiuiHomeLog$RecordedLogHelper;->mStringBuilder:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/home/launcher/MiuiHomeLog$RecordedLogHelper;->mHead:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    :cond_0
    iput v2, p0, Lcom/miui/home/launcher/MiuiHomeLog$RecordedLogHelper;->mCurrentSavedLogNum:I

    return-void
.end method

.method public setHead(Ljava/lang/String;)V
    .locals 2

    .line 89
    iget-object v0, p0, Lcom/miui/home/launcher/MiuiHomeLog$RecordedLogHelper;->mHead:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 90
    iput-object p1, p0, Lcom/miui/home/launcher/MiuiHomeLog$RecordedLogHelper;->mHead:Ljava/lang/String;

    .line 91
    iget-object v0, p0, Lcom/miui/home/launcher/MiuiHomeLog$RecordedLogHelper;->mStringBuilder:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    return-void
.end method
