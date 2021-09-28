.class Lmiuix/visual/check/VisualCheckedTextView$1;
.super Lmiuix/animation/listener/TransitionListener;
.source "VisualCheckedTextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/visual/check/VisualCheckedTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiuix/visual/check/VisualCheckedTextView;


# direct methods
.method constructor <init>(Lmiuix/visual/check/VisualCheckedTextView;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lmiuix/visual/check/VisualCheckedTextView$1;->this$0:Lmiuix/visual/check/VisualCheckedTextView;

    invoke-direct {p0}, Lmiuix/animation/listener/TransitionListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onUpdate(Ljava/lang/Object;Lmiuix/animation/property/IIntValueProperty;IFZ)V
    .locals 0

    .line 45
    iget-object p1, p0, Lmiuix/visual/check/VisualCheckedTextView$1;->this$0:Lmiuix/visual/check/VisualCheckedTextView;

    invoke-virtual {p1, p3}, Lmiuix/visual/check/VisualCheckedTextView;->setTextColor(I)V

    return-void
.end method
