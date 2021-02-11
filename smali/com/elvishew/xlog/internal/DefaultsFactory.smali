.class public Lcom/elvishew/xlog/internal/DefaultsFactory;
.super Ljava/lang/Object;
.source "DefaultsFactory.java"


# static fields
.field private static final BUILTIN_OBJECT_FORMATTERS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/elvishew/xlog/formatter/message/object/ObjectFormatter<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 65
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 66
    const-class v1, Landroid/os/Bundle;

    new-instance v2, Lcom/elvishew/xlog/formatter/message/object/BundleFormatter;

    invoke-direct {v2}, Lcom/elvishew/xlog/formatter/message/object/BundleFormatter;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    const-class v1, Landroid/content/Intent;

    new-instance v2, Lcom/elvishew/xlog/formatter/message/object/IntentFormatter;

    invoke-direct {v2}, Lcom/elvishew/xlog/formatter/message/object/IntentFormatter;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/elvishew/xlog/internal/DefaultsFactory;->BUILTIN_OBJECT_FORMATTERS:Ljava/util/Map;

    return-void
.end method

.method public static builtinObjectFormatters()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/elvishew/xlog/formatter/message/object/ObjectFormatter<",
            "*>;>;"
        }
    .end annotation

    .line 161
    sget-object v0, Lcom/elvishew/xlog/internal/DefaultsFactory;->BUILTIN_OBJECT_FORMATTERS:Ljava/util/Map;

    return-object v0
.end method

.method public static createBackupStrategy()Lcom/elvishew/xlog/printer/file/backup/BackupStrategy;
    .locals 3

    .line 145
    new-instance v0, Lcom/elvishew/xlog/printer/file/backup/FileSizeBackupStrategy;

    const-wide/32 v1, 0x100000

    invoke-direct {v0, v1, v2}, Lcom/elvishew/xlog/printer/file/backup/FileSizeBackupStrategy;-><init>(J)V

    return-object v0
.end method

.method public static createBorderFormatter()Lcom/elvishew/xlog/formatter/border/BorderFormatter;
    .locals 1

    .line 110
    new-instance v0, Lcom/elvishew/xlog/formatter/border/DefaultBorderFormatter;

    invoke-direct {v0}, Lcom/elvishew/xlog/formatter/border/DefaultBorderFormatter;-><init>()V

    return-object v0
.end method

.method public static createCleanStrategy()Lcom/elvishew/xlog/printer/file/clean/CleanStrategy;
    .locals 1

    .line 152
    new-instance v0, Lcom/elvishew/xlog/printer/file/clean/NeverCleanStrategy;

    invoke-direct {v0}, Lcom/elvishew/xlog/printer/file/clean/NeverCleanStrategy;-><init>()V

    return-object v0
.end method

.method public static createFileNameGenerator()Lcom/elvishew/xlog/printer/file/naming/FileNameGenerator;
    .locals 2

    .line 138
    new-instance v0, Lcom/elvishew/xlog/printer/file/naming/ChangelessFileNameGenerator;

    const-string v1, "log"

    invoke-direct {v0, v1}, Lcom/elvishew/xlog/printer/file/naming/ChangelessFileNameGenerator;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static createFlattener2()Lcom/elvishew/xlog/flattener/Flattener2;
    .locals 1

    .line 124
    new-instance v0, Lcom/elvishew/xlog/flattener/DefaultFlattener;

    invoke-direct {v0}, Lcom/elvishew/xlog/flattener/DefaultFlattener;-><init>()V

    return-object v0
.end method

.method public static createJsonFormatter()Lcom/elvishew/xlog/formatter/message/json/JsonFormatter;
    .locals 1

    .line 75
    new-instance v0, Lcom/elvishew/xlog/formatter/message/json/DefaultJsonFormatter;

    invoke-direct {v0}, Lcom/elvishew/xlog/formatter/message/json/DefaultJsonFormatter;-><init>()V

    return-object v0
.end method

.method public static createStackTraceFormatter()Lcom/elvishew/xlog/formatter/stacktrace/StackTraceFormatter;
    .locals 1

    .line 103
    new-instance v0, Lcom/elvishew/xlog/formatter/stacktrace/DefaultStackTraceFormatter;

    invoke-direct {v0}, Lcom/elvishew/xlog/formatter/stacktrace/DefaultStackTraceFormatter;-><init>()V

    return-object v0
.end method

.method public static createThreadFormatter()Lcom/elvishew/xlog/formatter/thread/ThreadFormatter;
    .locals 1

    .line 96
    new-instance v0, Lcom/elvishew/xlog/formatter/thread/DefaultThreadFormatter;

    invoke-direct {v0}, Lcom/elvishew/xlog/formatter/thread/DefaultThreadFormatter;-><init>()V

    return-object v0
.end method

.method public static createThrowableFormatter()Lcom/elvishew/xlog/formatter/message/throwable/ThrowableFormatter;
    .locals 1

    .line 89
    new-instance v0, Lcom/elvishew/xlog/formatter/message/throwable/DefaultThrowableFormatter;

    invoke-direct {v0}, Lcom/elvishew/xlog/formatter/message/throwable/DefaultThrowableFormatter;-><init>()V

    return-object v0
.end method

.method public static createXmlFormatter()Lcom/elvishew/xlog/formatter/message/xml/XmlFormatter;
    .locals 1

    .line 82
    new-instance v0, Lcom/elvishew/xlog/formatter/message/xml/DefaultXmlFormatter;

    invoke-direct {v0}, Lcom/elvishew/xlog/formatter/message/xml/DefaultXmlFormatter;-><init>()V

    return-object v0
.end method
