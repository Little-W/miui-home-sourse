.class Lmiuix/appcompat/internal/app/widget/AbsActionBarView$2;
.super Ljava/lang/Object;
.source "AbsActionBarView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->postShowOverflowMenu()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiuix/appcompat/internal/app/widget/AbsActionBarView;


# direct methods
.method constructor <init>(Lmiuix/appcompat/internal/app/widget/AbsActionBarView;)V
    .locals 0

    .line 236
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$2;->this$0:Lmiuix/appcompat/internal/app/widget/AbsActionBarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 238
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$2;->this$0:Lmiuix/appcompat/internal/app/widget/AbsActionBarView;

    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->showOverflowMenu()Z

    return-void
.end method
