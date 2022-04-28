.class public Lcom/miui/msa/internal/preinstall/v2/utils/MLog;
.super Ljava/lang/Object;
.source "MLog.java"


# static fields
.field private static final DEBUG:I = 0x3

.field private static final ERROR:I = 0x0

.field private static final INFO:I = 0x2

.field private static final MAX_CHAR_SIZE_PER_LOG:I = 0xbb8

.field private static final VERBOSE:I = 0x4

.field private static final WARN:I = 0x1

.field private static sLogLevel:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    invoke-static {}, Lcom/miui/msa/internal/preinstall/v2/utils/DebugUtils;->isDebugBuild()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    sput v0, Lcom/miui/msa/internal/preinstall/v2/utils/MLog;->sLogLevel:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addAdPrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MSA-AD-SDK-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 41
    sget v0, Lcom/miui/msa/internal/preinstall/v2/utils/MLog;->sLogLevel:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    .line 42
    invoke-static {p0}, Lcom/miui/msa/internal/preinstall/v2/utils/MLog;->addAdPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1, v1}, Lcom/miui/msa/internal/preinstall/v2/utils/MLog;->log(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .line 47
    sget v0, Lcom/miui/msa/internal/preinstall/v2/utils/MLog;->sLogLevel:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    .line 48
    invoke-static {p0}, Lcom/miui/msa/internal/preinstall/v2/utils/MLog;->addAdPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p2}, Lcom/miui/msa/internal/preinstall/v2/utils/MLog;->getPatternedMsg(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 53
    sget v0, Lcom/miui/msa/internal/preinstall/v2/utils/MLog;->sLogLevel:I

    if-ltz v0, :cond_0

    .line 54
    invoke-static {p0}, Lcom/miui/msa/internal/preinstall/v2/utils/MLog;->addAdPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/miui/msa/internal/preinstall/v2/utils/MLog;->log(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 59
    sget v0, Lcom/miui/msa/internal/preinstall/v2/utils/MLog;->sLogLevel:I

    if-ltz v0, :cond_0

    .line 60
    invoke-static {p0}, Lcom/miui/msa/internal/preinstall/v2/utils/MLog;->addAdPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p2}, Lcom/miui/msa/internal/preinstall/v2/utils/MLog;->getPatternedMsg(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static getLogLevel()I
    .locals 1

    .line 26
    sget v0, Lcom/miui/msa/internal/preinstall/v2/utils/MLog;->sLogLevel:I

    return v0
.end method

.method private static getPatternedMsg(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 1

    .line 132
    sget-object v0, Landroid/util/Patterns;->IP_ADDRESS:Ljava/util/regex/Pattern;

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    const-string v0, "*.*.*.*"

    invoke-virtual {p1, v0}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\n"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 77
    sget v0, Lcom/miui/msa/internal/preinstall/v2/utils/MLog;->sLogLevel:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    .line 78
    invoke-static {p0}, Lcom/miui/msa/internal/preinstall/v2/utils/MLog;->addAdPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1, v1}, Lcom/miui/msa/internal/preinstall/v2/utils/MLog;->log(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .line 83
    sget v0, Lcom/miui/msa/internal/preinstall/v2/utils/MLog;->sLogLevel:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    .line 84
    invoke-static {p0}, Lcom/miui/msa/internal/preinstall/v2/utils/MLog;->addAdPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p2}, Lcom/miui/msa/internal/preinstall/v2/utils/MLog;->getPatternedMsg(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private static log(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 4

    const/4 v0, 0x0

    .line 101
    :cond_0
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    div-int/lit16 v1, v1, 0xbb8

    if-gt v0, v1, :cond_1

    mul-int/lit16 v1, v0, 0xbb8

    .line 103
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v0, v0, 0x1

    mul-int/lit16 v3, v0, 0xbb8

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 105
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 120
    :pswitch_0
    invoke-static {p0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 117
    :pswitch_1
    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 114
    :pswitch_2
    invoke-static {p0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 111
    :pswitch_3
    invoke-static {p0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 108
    :pswitch_4
    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static setDebugOn(Z)V
    .locals 0

    if-eqz p0, :cond_0

    const/16 p0, 0x3e8

    .line 31
    sput p0, Lcom/miui/msa/internal/preinstall/v2/utils/MLog;->sLogLevel:I

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    .line 33
    sput p0, Lcom/miui/msa/internal/preinstall/v2/utils/MLog;->sLogLevel:I

    :goto_0
    return-void
.end method

.method public static setLogLevel(I)V
    .locals 0

    .line 22
    sput p0, Lcom/miui/msa/internal/preinstall/v2/utils/MLog;->sLogLevel:I

    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 89
    sget v0, Lcom/miui/msa/internal/preinstall/v2/utils/MLog;->sLogLevel:I

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    .line 90
    invoke-static {p0}, Lcom/miui/msa/internal/preinstall/v2/utils/MLog;->addAdPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1, v1}, Lcom/miui/msa/internal/preinstall/v2/utils/MLog;->log(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .line 95
    sget v0, Lcom/miui/msa/internal/preinstall/v2/utils/MLog;->sLogLevel:I

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    .line 96
    invoke-static {p0}, Lcom/miui/msa/internal/preinstall/v2/utils/MLog;->addAdPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p2}, Lcom/miui/msa/internal/preinstall/v2/utils/MLog;->getPatternedMsg(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 65
    sget v0, Lcom/miui/msa/internal/preinstall/v2/utils/MLog;->sLogLevel:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    .line 66
    invoke-static {p0}, Lcom/miui/msa/internal/preinstall/v2/utils/MLog;->addAdPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1, v1}, Lcom/miui/msa/internal/preinstall/v2/utils/MLog;->log(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .line 71
    sget v0, Lcom/miui/msa/internal/preinstall/v2/utils/MLog;->sLogLevel:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    .line 72
    invoke-static {p0}, Lcom/miui/msa/internal/preinstall/v2/utils/MLog;->addAdPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p2}, Lcom/miui/msa/internal/preinstall/v2/utils/MLog;->getPatternedMsg(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
