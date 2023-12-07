.class public Lcom/miui/home/library/MiuiHomeLog284Helper;
.super Ljava/lang/Object;
.source "MiuiHomeLog284Helper.java"


# static fields
.field private static enable284BugReportLog:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private static appendVersionNameToTag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_1

    .line 57
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 58
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "] - "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_1
    :goto_0
    return-object p1
.end method

.method public static fileLoggerLevelFatal(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0

    .line 30
    invoke-static {p1, p2}, Lcom/miui/home/library/MiuiHomeLog284Helper;->appendVersionNameToTag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 31
    sget-boolean p2, Lcom/miui/home/library/MiuiHomeLog284Helper;->enable284BugReportLog:Z

    if-eqz p2, :cond_0

    .line 32
    invoke-static {p0}, Lmiuix/util/Log;->getFileLogger(Landroid/content/Context;)Lmiuix/util/Log$Facade;

    move-result-object p0

    invoke-virtual {p0, p1, p3, p4}, Lmiuix/util/Log$Facade;->fatal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method
