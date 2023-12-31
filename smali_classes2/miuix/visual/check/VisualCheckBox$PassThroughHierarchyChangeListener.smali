.class Lmiuix/visual/check/VisualCheckBox$PassThroughHierarchyChangeListener;
.super Ljava/lang/Object;
.source "VisualCheckBox.java"

# interfaces
.implements Landroid/view/ViewGroup$OnHierarchyChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/visual/check/VisualCheckBox;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PassThroughHierarchyChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lmiuix/visual/check/VisualCheckBox;


# direct methods
.method private constructor <init>(Lmiuix/visual/check/VisualCheckBox;)V
    .locals 0

    .line 143
    iput-object p1, p0, Lmiuix/visual/check/VisualCheckBox$PassThroughHierarchyChangeListener;->this$0:Lmiuix/visual/check/VisualCheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lmiuix/visual/check/VisualCheckBox;Lmiuix/visual/check/VisualCheckBox$1;)V
    .locals 0

    .line 143
    invoke-direct {p0, p1}, Lmiuix/visual/check/VisualCheckBox$PassThroughHierarchyChangeListener;-><init>(Lmiuix/visual/check/VisualCheckBox;)V

    return-void
.end method


# virtual methods
.method public onChildViewAdded(Landroid/view/View;Landroid/view/View;)V
    .locals 0

    .line 147
    iget-object p0, p0, Lmiuix/visual/check/VisualCheckBox$PassThroughHierarchyChangeListener;->this$0:Lmiuix/visual/check/VisualCheckBox;

    if-ne p1, p0, :cond_0

    .line 148
    instance-of p1, p2, Lmiuix/visual/check/VisualCheckItem;

    if-eqz p1, :cond_0

    .line 149
    invoke-static {p0}, Lmiuix/visual/check/VisualCheckBox;->access$100(Lmiuix/visual/check/VisualCheckBox;)Ljava/util/List;

    move-result-object p0

    check-cast p2, Lmiuix/visual/check/VisualCheckItem;

    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V
    .locals 0

    .line 156
    iget-object p0, p0, Lmiuix/visual/check/VisualCheckBox$PassThroughHierarchyChangeListener;->this$0:Lmiuix/visual/check/VisualCheckBox;

    if-ne p1, p0, :cond_0

    .line 157
    instance-of p1, p2, Lmiuix/visual/check/VisualCheckItem;

    if-eqz p1, :cond_0

    .line 158
    invoke-static {p0}, Lmiuix/visual/check/VisualCheckBox;->access$100(Lmiuix/visual/check/VisualCheckBox;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
