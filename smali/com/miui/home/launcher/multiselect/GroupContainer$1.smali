.class Lcom/miui/home/launcher/multiselect/GroupContainer$1;
.super Ljava/lang/Object;
.source "GroupContainer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/multiselect/GroupContainer;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/multiselect/GroupContainer;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/multiselect/GroupContainer;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/miui/home/launcher/multiselect/GroupContainer$1;->this$0:Lcom/miui/home/launcher/multiselect/GroupContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 31
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 33
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/multiselect/GroupContainer$1;->this$0:Lcom/miui/home/launcher/multiselect/GroupContainer;

    invoke-virtual {v0}, Lcom/miui/home/launcher/multiselect/GroupContainer;->isDisableState()Z

    move-result v0

    if-nez v0, :cond_1

    .line 34
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->autoFolder()V

    const-string p1, "group"

    .line 35
    invoke-static {p1}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackEditModeTopMenuClickEvent(Ljava/lang/String;)V

    goto :goto_0

    .line 37
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/multiselect/GroupContainer$1;->this$0:Lcom/miui/home/launcher/multiselect/GroupContainer;

    invoke-static {v0}, Lcom/miui/home/launcher/multiselect/GroupContainer;->access$000(Lcom/miui/home/launcher/multiselect/GroupContainer;)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/miui/home/launcher/common/Utilities;->showImprovedToast(Landroid/content/Context;II)V

    :goto_0
    return-void
.end method
