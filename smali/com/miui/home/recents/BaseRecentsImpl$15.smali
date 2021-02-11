.class Lcom/miui/home/recents/BaseRecentsImpl$15;
.super Ljava/lang/Object;
.source "BaseRecentsImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/recents/BaseRecentsImpl;->onResumed(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/recents/BaseRecentsImpl$15$_lancet;
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/recents/BaseRecentsImpl;

.field final synthetic val$className:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/miui/home/recents/BaseRecentsImpl;Ljava/lang/String;)V
    .locals 0

    .line 745
    iput-object p1, p0, Lcom/miui/home/recents/BaseRecentsImpl$15;->this$0:Lcom/miui/home/recents/BaseRecentsImpl;

    iput-object p2, p0, Lcom/miui/home/recents/BaseRecentsImpl$15;->val$className:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 748
    iget-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl$15;->this$0:Lcom/miui/home/recents/BaseRecentsImpl;

    invoke-static {v0}, Lcom/miui/home/recents/BaseRecentsImpl;->access$300(Lcom/miui/home/recents/BaseRecentsImpl;)Lcom/miui/home/recents/NavStubView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 749
    iget-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl$15;->this$0:Lcom/miui/home/recents/BaseRecentsImpl;

    invoke-static {v0}, Lcom/miui/home/recents/BaseRecentsImpl;->access$300(Lcom/miui/home/recents/BaseRecentsImpl;)Lcom/miui/home/recents/NavStubView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/NavStubView;->setVisibility(I)V

    const-string v0, "RecentsImpl"

    .line 750
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resume nobackhome nstub gone : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/home/recents/BaseRecentsImpl$15;->val$className:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/home/recents/BaseRecentsImpl$15$_lancet;->com_miui_home_launcher_aop_LogHooker_ad(Ljava/lang/String;Ljava/lang/String;)I

    .line 752
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl$15;->this$0:Lcom/miui/home/recents/BaseRecentsImpl;

    invoke-static {v0}, Lcom/miui/home/recents/BaseRecentsImpl;->access$1900(Lcom/miui/home/recents/BaseRecentsImpl;)V

    return-void
.end method
