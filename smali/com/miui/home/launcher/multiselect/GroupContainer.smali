.class public Lcom/miui/home/launcher/multiselect/GroupContainer;
.super Lcom/miui/home/launcher/multiselect/TopMenuContainer;
.source "GroupContainer.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/multiselect/TopMenuContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/multiselect/GroupContainer;)I
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/miui/home/launcher/multiselect/GroupContainer;->getDisableReason()I

    move-result p0

    return p0
.end method

.method private getDisableReason()I
    .locals 2

    .line 44
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    .line 46
    :cond_0
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isFolderShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    const v0, 0x7f1000f7

    return v0

    .line 48
    :cond_1
    invoke-static {}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->getMonitor()Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    const v0, 0x7f1000f8

    return v0

    .line 50
    :cond_2
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->checkedAllItemsInOneFolder()Z

    move-result v0

    if-eqz v0, :cond_3

    const v0, 0x7f1000f9

    return v0

    :cond_3
    const v0, 0x7f1000f6

    return v0
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 1

    .line 23
    invoke-super {p0}, Lcom/miui/home/launcher/multiselect/TopMenuContainer;->onFinishInflate()V

    const v0, 0x7f0800b1

    .line 25
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/multiselect/GroupContainer;->setImageResource(I)V

    const v0, 0x7f1000f4

    .line 26
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/multiselect/GroupContainer;->setTextId(I)V

    .line 28
    new-instance v0, Lcom/miui/home/launcher/multiselect/GroupContainer$1;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/multiselect/GroupContainer$1;-><init>(Lcom/miui/home/launcher/multiselect/GroupContainer;)V

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/multiselect/GroupContainer;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
