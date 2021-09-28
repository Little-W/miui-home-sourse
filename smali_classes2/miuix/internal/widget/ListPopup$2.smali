.class Lmiuix/internal/widget/ListPopup$2;
.super Ljava/lang/Object;
.source "ListPopup.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/internal/widget/ListPopup;->prepareShow(Landroid/view/View;Landroid/view/ViewGroup;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiuix/internal/widget/ListPopup;


# direct methods
.method constructor <init>(Lmiuix/internal/widget/ListPopup;)V
    .locals 0

    .line 167
    iput-object p1, p0, Lmiuix/internal/widget/ListPopup$2;->this$0:Lmiuix/internal/widget/ListPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 170
    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 171
    iget-object p1, p0, Lmiuix/internal/widget/ListPopup$2;->this$0:Lmiuix/internal/widget/ListPopup;

    invoke-static {p1}, Lmiuix/internal/widget/ListPopup;->access$200(Lmiuix/internal/widget/ListPopup;)Landroid/widget/ListView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result p1

    iget-object p2, p0, Lmiuix/internal/widget/ListPopup$2;->this$0:Lmiuix/internal/widget/ListPopup;

    invoke-static {p2}, Lmiuix/internal/widget/ListPopup;->access$200(Lmiuix/internal/widget/ListPopup;)Landroid/widget/ListView;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object p2

    invoke-interface {p2}, Landroid/widget/ListAdapter;->getCount()I

    move-result p2

    const/4 p3, 0x1

    sub-int/2addr p2, p3

    if-ne p1, p2, :cond_0

    move p1, p3

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 172
    :goto_0
    iget-object p2, p0, Lmiuix/internal/widget/ListPopup$2;->this$0:Lmiuix/internal/widget/ListPopup;

    iget-object p2, p2, Lmiuix/internal/widget/ListPopup;->mContentView:Landroid/view/View;

    check-cast p2, Lmiuix/springback/view/SpringBackLayout;

    xor-int/2addr p1, p3

    invoke-virtual {p2, p1}, Lmiuix/springback/view/SpringBackLayout;->setEnabled(Z)V

    return-void
.end method
