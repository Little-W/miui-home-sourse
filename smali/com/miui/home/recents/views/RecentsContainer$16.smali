.class Lcom/miui/home/recents/views/RecentsContainer$16;
.super Ljava/lang/Object;
.source "RecentsContainer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/recents/views/RecentsContainer;->updateExitMultiModeBtnVisible()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/recents/views/RecentsContainer$16$_lancet;
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/recents/views/RecentsContainer;


# direct methods
.method constructor <init>(Lcom/miui/home/recents/views/RecentsContainer;)V
    .locals 0

    .line 1098
    iput-object p1, p0, Lcom/miui/home/recents/views/RecentsContainer$16;->this$0:Lcom/miui/home/recents/views/RecentsContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1101
    iget-object p1, p0, Lcom/miui/home/recents/views/RecentsContainer$16;->this$0:Lcom/miui/home/recents/views/RecentsContainer;

    invoke-virtual {p1}, Lcom/miui/home/recents/views/RecentsContainer;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/home/recents/RecentsModel;->getInstance(Landroid/content/Context;)Lcom/miui/home/recents/RecentsModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/recents/RecentsModel;->exitSplitScreen()V

    const-string p1, "RecentsContainer"

    const-string v0, "exit splitScreen mode ---- click exit button."

    .line 1102
    invoke-static {p1, v0}, Lcom/miui/home/recents/views/RecentsContainer$16$_lancet;->com_miui_home_launcher_aop_LogHooker_ai(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
