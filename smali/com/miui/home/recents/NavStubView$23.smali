.class Lcom/miui/home/recents/NavStubView$23;
.super Ljava/lang/Object;
.source "NavStubView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/recents/NavStubView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/recents/NavStubView;


# direct methods
.method constructor <init>(Lcom/miui/home/recents/NavStubView;)V
    .locals 0

    .line 4173
    iput-object p1, p0, Lcom/miui/home/recents/NavStubView$23;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 4177
    :try_start_0
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView$23;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {v0}, Lcom/miui/home/recents/NavStubView;->access$7800(Lcom/miui/home/recents/NavStubView;)Landroid/view/WindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/recents/NavStubView$23;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {v1}, Lcom/miui/home/recents/NavStubView;->access$7700(Lcom/miui/home/recents/NavStubView;)Lcom/miui/home/recents/views/RecentsSmallWindowCrop;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4179
    :catch_0
    sget-object v0, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    const-string v1, "exitSmallWindowCrop error"

    :goto_0
    return-void
.end method
