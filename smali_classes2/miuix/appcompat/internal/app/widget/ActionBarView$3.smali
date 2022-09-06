.class Lmiuix/appcompat/internal/app/widget/ActionBarView$3;
.super Lmiuix/animation/listener/TransitionListener;
.source "ActionBarView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/appcompat/internal/app/widget/ActionBarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiuix/appcompat/internal/app/widget/ActionBarView;


# direct methods
.method constructor <init>(Lmiuix/appcompat/internal/app/widget/ActionBarView;)V
    .locals 0

    .line 196
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$3;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    invoke-direct {p0}, Lmiuix/animation/listener/TransitionListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onUpdate(Ljava/lang/Object;Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/Collection<",
            "Lmiuix/animation/listener/UpdateInfo;",
            ">;)V"
        }
    .end annotation

    .line 199
    invoke-super {p0, p1, p2}, Lmiuix/animation/listener/TransitionListener;->onUpdate(Ljava/lang/Object;Ljava/util/Collection;)V

    .line 200
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$3;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->access$100(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Lmiuix/springback/view/SpringBackLayout;

    move-result-object p1

    invoke-virtual {p1}, Lmiuix/springback/view/SpringBackLayout;->getAlpha()F

    move-result p1

    const/4 p2, 0x0

    cmpl-float p1, p1, p2

    const/16 p2, 0x8

    if-nez p1, :cond_0

    .line 201
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$3;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->access$100(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Lmiuix/springback/view/SpringBackLayout;

    move-result-object p1

    invoke-virtual {p1, p2}, Lmiuix/springback/view/SpringBackLayout;->setVisibility(I)V

    goto :goto_0

    .line 202
    :cond_0
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$3;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->access$100(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Lmiuix/springback/view/SpringBackLayout;

    move-result-object p1

    invoke-virtual {p1}, Lmiuix/springback/view/SpringBackLayout;->getVisibility()I

    move-result p1

    if-ne p1, p2, :cond_1

    .line 203
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$3;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->access$100(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Lmiuix/springback/view/SpringBackLayout;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lmiuix/springback/view/SpringBackLayout;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method
