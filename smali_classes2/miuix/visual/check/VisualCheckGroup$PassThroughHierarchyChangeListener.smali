.class Lmiuix/visual/check/VisualCheckGroup$PassThroughHierarchyChangeListener;
.super Ljava/lang/Object;
.source "VisualCheckGroup.java"

# interfaces
.implements Landroid/view/ViewGroup$OnHierarchyChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/visual/check/VisualCheckGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PassThroughHierarchyChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lmiuix/visual/check/VisualCheckGroup;


# direct methods
.method private constructor <init>(Lmiuix/visual/check/VisualCheckGroup;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lmiuix/visual/check/VisualCheckGroup$PassThroughHierarchyChangeListener;->this$0:Lmiuix/visual/check/VisualCheckGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lmiuix/visual/check/VisualCheckGroup;Lmiuix/visual/check/VisualCheckGroup$1;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Lmiuix/visual/check/VisualCheckGroup$PassThroughHierarchyChangeListener;-><init>(Lmiuix/visual/check/VisualCheckGroup;)V

    return-void
.end method


# virtual methods
.method public onChildViewAdded(Landroid/view/View;Landroid/view/View;)V
    .locals 1

    .line 53
    iget-object v0, p0, Lmiuix/visual/check/VisualCheckGroup$PassThroughHierarchyChangeListener;->this$0:Lmiuix/visual/check/VisualCheckGroup;

    if-ne p1, v0, :cond_1

    instance-of p1, p2, Lmiuix/visual/check/VisualCheckBox;

    if-eqz p1, :cond_1

    .line 54
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 57
    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result p1

    .line 58
    invoke-virtual {p2, p1}, Landroid/view/View;->setId(I)V

    .line 60
    :cond_0
    check-cast p2, Lmiuix/visual/check/VisualCheckBox;

    iget-object p0, p0, Lmiuix/visual/check/VisualCheckGroup$PassThroughHierarchyChangeListener;->this$0:Lmiuix/visual/check/VisualCheckGroup;

    .line 61
    invoke-static {p0}, Lmiuix/visual/check/VisualCheckGroup;->access$200(Lmiuix/visual/check/VisualCheckGroup;)Lmiuix/visual/check/VisualCheckBox$OnCheckedChangeListener;

    move-result-object p0

    .line 60
    invoke-virtual {p2, p0}, Lmiuix/visual/check/VisualCheckBox;->setOnCheckedChangeWidgetListener(Lmiuix/visual/check/VisualCheckBox$OnCheckedChangeListener;)V

    :cond_1
    return-void
.end method

.method public onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V
    .locals 0

    .line 67
    iget-object p0, p0, Lmiuix/visual/check/VisualCheckGroup$PassThroughHierarchyChangeListener;->this$0:Lmiuix/visual/check/VisualCheckGroup;

    if-ne p1, p0, :cond_0

    instance-of p0, p2, Lmiuix/visual/check/VisualCheckBox;

    if-eqz p0, :cond_0

    .line 68
    check-cast p2, Lmiuix/visual/check/VisualCheckBox;

    const/4 p0, 0x0

    invoke-virtual {p2, p0}, Lmiuix/visual/check/VisualCheckBox;->setOnCheckedChangeWidgetListener(Lmiuix/visual/check/VisualCheckBox$OnCheckedChangeListener;)V

    :cond_0
    return-void
.end method
