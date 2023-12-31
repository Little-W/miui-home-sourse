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


# virtual methods
.method protected onFinishInflate()V
    .locals 2

    .line 23
    invoke-super {p0}, Lcom/miui/home/launcher/multiselect/TopMenuContainer;->onFinishInflate()V

    const v0, 0x7f080313

    const v1, 0x7f080314

    .line 25
    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/multiselect/GroupContainer;->setImageResource(II)V

    .line 27
    new-instance v0, Lcom/miui/home/launcher/multiselect/GroupContainer$1;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/multiselect/GroupContainer$1;-><init>(Lcom/miui/home/launcher/multiselect/GroupContainer;)V

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/multiselect/GroupContainer;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
