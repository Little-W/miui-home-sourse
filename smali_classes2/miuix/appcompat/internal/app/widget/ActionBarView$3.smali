.class Lmiuix/appcompat/internal/app/widget/ActionBarView$3;
.super Ljava/lang/Object;
.source "ActionBarView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 199
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$3;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->access$100(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Landroidx/appcompat/app/ActionBar$OnNavigationListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 200
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$3;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->access$100(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Landroidx/appcompat/app/ActionBar$OnNavigationListener;

    move-result-object p1

    invoke-interface {p1, p3, p4, p5}, Landroidx/appcompat/app/ActionBar$OnNavigationListener;->onNavigationItemSelected(IJ)Z

    :cond_0
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method
