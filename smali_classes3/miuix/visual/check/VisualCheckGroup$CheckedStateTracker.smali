.class Lmiuix/visual/check/VisualCheckGroup$CheckedStateTracker;
.super Ljava/lang/Object;
.source "VisualCheckGroup.java"

# interfaces
.implements Lmiuix/visual/check/VisualCheckBox$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/visual/check/VisualCheckGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CheckedStateTracker"
.end annotation


# instance fields
.field final synthetic this$0:Lmiuix/visual/check/VisualCheckGroup;


# direct methods
.method private constructor <init>(Lmiuix/visual/check/VisualCheckGroup;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lmiuix/visual/check/VisualCheckGroup$CheckedStateTracker;->this$0:Lmiuix/visual/check/VisualCheckGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lmiuix/visual/check/VisualCheckGroup;Lmiuix/visual/check/VisualCheckGroup$1;)V
    .locals 0

    .line 73
    invoke-direct {p0, p1}, Lmiuix/visual/check/VisualCheckGroup$CheckedStateTracker;-><init>(Lmiuix/visual/check/VisualCheckGroup;)V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Lmiuix/visual/check/VisualCheckBox;Z)V
    .locals 2

    .line 79
    iget-object p2, p0, Lmiuix/visual/check/VisualCheckGroup$CheckedStateTracker;->this$0:Lmiuix/visual/check/VisualCheckGroup;

    invoke-static {p2}, Lmiuix/visual/check/VisualCheckGroup;->access$300(Lmiuix/visual/check/VisualCheckGroup;)Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    .line 83
    :cond_0
    iget-object p2, p0, Lmiuix/visual/check/VisualCheckGroup$CheckedStateTracker;->this$0:Lmiuix/visual/check/VisualCheckGroup;

    const/4 v0, 0x1

    invoke-static {p2, v0}, Lmiuix/visual/check/VisualCheckGroup;->access$302(Lmiuix/visual/check/VisualCheckGroup;Z)Z

    .line 84
    iget-object p2, p0, Lmiuix/visual/check/VisualCheckGroup$CheckedStateTracker;->this$0:Lmiuix/visual/check/VisualCheckGroup;

    invoke-static {p2}, Lmiuix/visual/check/VisualCheckGroup;->access$400(Lmiuix/visual/check/VisualCheckGroup;)I

    move-result p2

    const/4 v0, -0x1

    const/4 v1, 0x0

    if-eq p2, v0, :cond_1

    .line 85
    iget-object p2, p0, Lmiuix/visual/check/VisualCheckGroup$CheckedStateTracker;->this$0:Lmiuix/visual/check/VisualCheckGroup;

    invoke-static {p2}, Lmiuix/visual/check/VisualCheckGroup;->access$400(Lmiuix/visual/check/VisualCheckGroup;)I

    move-result v0

    invoke-static {p2, v0, v1}, Lmiuix/visual/check/VisualCheckGroup;->access$500(Lmiuix/visual/check/VisualCheckGroup;IZ)V

    .line 87
    :cond_1
    iget-object p2, p0, Lmiuix/visual/check/VisualCheckGroup$CheckedStateTracker;->this$0:Lmiuix/visual/check/VisualCheckGroup;

    invoke-static {p2, v1}, Lmiuix/visual/check/VisualCheckGroup;->access$302(Lmiuix/visual/check/VisualCheckGroup;Z)Z

    .line 89
    invoke-virtual {p1}, Lmiuix/visual/check/VisualCheckBox;->getId()I

    move-result p1

    .line 90
    iget-object p0, p0, Lmiuix/visual/check/VisualCheckGroup$CheckedStateTracker;->this$0:Lmiuix/visual/check/VisualCheckGroup;

    invoke-static {p0, p1}, Lmiuix/visual/check/VisualCheckGroup;->access$600(Lmiuix/visual/check/VisualCheckGroup;I)V

    return-void
.end method
