.class Lcom/miui/performance/tracer/BinderLogger$1;
.super Ljava/lang/Object;
.source "BinderLogger.java"

# interfaces
.implements Lcom/miui/performance/tools/MainLooperPrinter$DispatchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/performance/tracer/BinderLogger;->watchCrash(Landroid/content/Context;Ljava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$perfDir:Ljava/io/File;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/io/File;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/miui/performance/tracer/BinderLogger$1;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/miui/performance/tracer/BinderLogger$1;->val$perfDir:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchEnd(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public dispatchStart(Ljava/lang/String;)V
    .locals 2

    .line 39
    sget-object v0, Lcom/miui/performance/tools/MessageTools;->Companion:Lcom/miui/performance/tools/MessageTools$Companion;

    const-string v1, "android.app.ActivityThread$H"

    invoke-virtual {v0, p1, v1}, Lcom/miui/performance/tools/MessageTools$Companion;->matchHandler(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/miui/performance/tools/MessageTools;->Companion:Lcom/miui/performance/tools/MessageTools$Companion;

    const-string v1, "134"

    .line 40
    invoke-virtual {v0, p1, v1}, Lcom/miui/performance/tools/MessageTools$Companion;->matchWhat(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 41
    iget-object p1, p0, Lcom/miui/performance/tracer/BinderLogger$1;->val$context:Landroid/content/Context;

    iget-object v0, p0, Lcom/miui/performance/tracer/BinderLogger$1;->val$perfDir:Ljava/io/File;

    invoke-static {p1, v0}, Lcom/miui/performance/tracer/BinderLogger;->log(Landroid/content/Context;Ljava/io/File;)V

    :cond_0
    return-void
.end method
