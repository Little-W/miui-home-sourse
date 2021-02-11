.class public Lmiuix/visual/check/VisualCheckBox;
.super Landroid/widget/LinearLayout;
.source "VisualCheckBox.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/visual/check/VisualCheckBox$OnCheckedChangeListener;,
        Lmiuix/visual/check/VisualCheckBox$PassThroughHierarchyChangeListener;
    }
.end annotation


# instance fields
.field private mChecked:Z

.field private mOnCheckedChangeWidgetListener:Lmiuix/visual/check/VisualCheckBox$OnCheckedChangeListener;

.field private mPassThroughListener:Lmiuix/visual/check/VisualCheckBox$PassThroughHierarchyChangeListener;

.field private mVisualCheckItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lmiuix/visual/check/VisualCheckItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 31
    invoke-direct {p0, p1, v0}, Lmiuix/visual/check/VisualCheckBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 35
    invoke-direct {p0, p1, p2, v0}, Lmiuix/visual/check/VisualCheckBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 28
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lmiuix/visual/check/VisualCheckBox;->mVisualCheckItems:Ljava/util/List;

    const/4 p1, 0x1

    .line 40
    invoke-virtual {p0, p1}, Lmiuix/visual/check/VisualCheckBox;->setOrientation(I)V

    .line 41
    new-instance p1, Lmiuix/visual/check/VisualCheckBox$PassThroughHierarchyChangeListener;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lmiuix/visual/check/VisualCheckBox$PassThroughHierarchyChangeListener;-><init>(Lmiuix/visual/check/VisualCheckBox;Lmiuix/visual/check/VisualCheckBox$1;)V

    iput-object p1, p0, Lmiuix/visual/check/VisualCheckBox;->mPassThroughListener:Lmiuix/visual/check/VisualCheckBox$PassThroughHierarchyChangeListener;

    .line 42
    iget-object p1, p0, Lmiuix/visual/check/VisualCheckBox;->mPassThroughListener:Lmiuix/visual/check/VisualCheckBox$PassThroughHierarchyChangeListener;

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    return-void
.end method

.method static synthetic access$100(Lmiuix/visual/check/VisualCheckBox;)Ljava/util/List;
    .locals 0

    .line 20
    iget-object p0, p0, Lmiuix/visual/check/VisualCheckBox;->mVisualCheckItems:Ljava/util/List;

    return-object p0
.end method

.method private notifyChecked(Z)V
    .locals 2

    .line 73
    iget-object v0, p0, Lmiuix/visual/check/VisualCheckBox;->mVisualCheckItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiuix/visual/check/VisualCheckItem;

    .line 74
    invoke-interface {v1, p1}, Lmiuix/visual/check/VisualCheckItem;->onChecked(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private notifyTouchEvent(Landroid/view/MotionEvent;)V
    .locals 2

    .line 67
    iget-object v0, p0, Lmiuix/visual/check/VisualCheckBox;->mVisualCheckItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiuix/visual/check/VisualCheckItem;

    .line 68
    invoke-interface {v1, p0, p1}, Lmiuix/visual/check/VisualCheckItem;->onVisualCheckBoxTouchEvent(Lmiuix/visual/check/VisualCheckBox;Landroid/view/MotionEvent;)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public isChecked()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .line 108
    iget-boolean v0, p0, Lmiuix/visual/check/VisualCheckBox;->mChecked:Z

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 53
    iget-object v0, p0, Lmiuix/visual/check/VisualCheckBox;->mVisualCheckItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 54
    invoke-direct {p0, p1}, Lmiuix/visual/check/VisualCheckBox;->notifyTouchEvent(Landroid/view/MotionEvent;)V

    .line 55
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 56
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    .line 57
    :cond_0
    invoke-virtual {p0}, Lmiuix/visual/check/VisualCheckBox;->toggle()V

    .line 58
    sget p1, Lmiuix/view/HapticFeedbackConstants;->MIUI_MESH_NORMAL:I

    invoke-static {p0, p1}, Lmiuix/view/HapticCompat;->performHapticFeedback(Landroid/view/View;I)Z

    :cond_1
    return v1

    .line 62
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public performClick()Z
    .locals 1

    .line 47
    invoke-virtual {p0}, Lmiuix/visual/check/VisualCheckBox;->toggle()V

    .line 48
    invoke-super {p0}, Landroid/widget/LinearLayout;->performClick()Z

    move-result v0

    return v0
.end method

.method public setChecked(Z)V
    .locals 1

    .line 112
    iget-boolean v0, p0, Lmiuix/visual/check/VisualCheckBox;->mChecked:Z

    if-eq v0, p1, :cond_0

    .line 113
    iput-boolean p1, p0, Lmiuix/visual/check/VisualCheckBox;->mChecked:Z

    .line 114
    invoke-direct {p0, p1}, Lmiuix/visual/check/VisualCheckBox;->notifyChecked(Z)V

    .line 115
    iget-object p1, p0, Lmiuix/visual/check/VisualCheckBox;->mOnCheckedChangeWidgetListener:Lmiuix/visual/check/VisualCheckBox$OnCheckedChangeListener;

    if-eqz p1, :cond_0

    .line 116
    iget-boolean v0, p0, Lmiuix/visual/check/VisualCheckBox;->mChecked:Z

    invoke-interface {p1, p0, v0}, Lmiuix/visual/check/VisualCheckBox$OnCheckedChangeListener;->onCheckedChanged(Lmiuix/visual/check/VisualCheckBox;Z)V

    :cond_0
    return-void
.end method

.method setOnCheckedChangeWidgetListener(Lmiuix/visual/check/VisualCheckBox$OnCheckedChangeListener;)V
    .locals 0

    .line 130
    iput-object p1, p0, Lmiuix/visual/check/VisualCheckBox;->mOnCheckedChangeWidgetListener:Lmiuix/visual/check/VisualCheckBox$OnCheckedChangeListener;

    return-void
.end method

.method public toggle()V
    .locals 1

    .line 79
    invoke-virtual {p0}, Lmiuix/visual/check/VisualCheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    .line 80
    iget-boolean v0, p0, Lmiuix/visual/check/VisualCheckBox;->mChecked:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lmiuix/visual/check/VisualCheckBox;->setChecked(Z)V

    :cond_0
    return-void
.end method
