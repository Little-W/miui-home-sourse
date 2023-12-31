.class public Lmiuix/util/Log;
.super Ljava/lang/Object;
.source "Log.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/util/Log$Facade;,
        Lmiuix/util/Log$FileLoggerInstance;
    }
.end annotation


# direct methods
.method public static getFileLogger(Landroid/content/Context;)Lmiuix/util/Log$Facade;
    .locals 0

    .line 37
    invoke-static {p0}, Lmiuix/util/Log$FileLoggerInstance;->init(Landroid/content/Context;)V

    .line 38
    invoke-static {}, Lmiuix/util/Log$FileLoggerInstance;->instance()Lmiuix/util/Log$Facade;

    move-result-object p0

    return-object p0
.end method
