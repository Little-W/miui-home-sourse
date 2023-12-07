.class public Lcom/miui/home/launcher/multiselect/FinishContainer;
.super Lcom/miui/home/launcher/multiselect/TopMenuContainer;
.source "FinishContainer.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/multiselect/TopMenuContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic lambda$onFinishInflate$0(Landroid/view/View;)V
    .locals 4

    .line 30
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x7

    const/4 v1, 0x0

    .line 32
    new-instance v2, Lcom/miui/home/launcher/EditStateChangeReason;

    const-string v3, "event_finish_button"

    invoke-direct {v2, v3}, Lcom/miui/home/launcher/EditStateChangeReason;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1, v2}, Lcom/miui/home/launcher/Launcher;->setEditingState(ILjava/lang/Runnable;Lcom/miui/home/launcher/EditStateChangeReason;)V

    const-string p0, "finish"

    .line 34
    invoke-static {p0}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackEditModeTopMenuClickEvent(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 2

    .line 25
    invoke-super {p0}, Lcom/miui/home/launcher/multiselect/TopMenuContainer;->onFinishInflate()V

    const v0, 0x7f080311

    const v1, 0x7f080312

    .line 27
    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/multiselect/FinishContainer;->setImageResource(II)V

    .line 29
    sget-object v0, Lcom/miui/home/launcher/multiselect/-$$Lambda$FinishContainer$7PmvLkz5MzKPmnHhL0anywnPhjM;->INSTANCE:Lcom/miui/home/launcher/multiselect/-$$Lambda$FinishContainer$7PmvLkz5MzKPmnHhL0anywnPhjM;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/multiselect/FinishContainer;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
