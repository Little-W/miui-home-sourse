.class Lmiuix/appcompat/app/AlertController$3;
.super Ljava/lang/Object;
.source "AlertController.java"

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/appcompat/app/AlertController;->setupWindowInsetsAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiuix/appcompat/app/AlertController;


# direct methods
.method constructor <init>(Lmiuix/appcompat/app/AlertController;)V
    .locals 0

    .line 939
    iput-object p1, p0, Lmiuix/appcompat/app/AlertController$3;->this$0:Lmiuix/appcompat/app/AlertController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onApplyWindowInsets$0$AlertController$3(Landroid/view/WindowInsets;)V
    .locals 0

    .line 942
    iget-object p0, p0, Lmiuix/appcompat/app/AlertController$3;->this$0:Lmiuix/appcompat/app/AlertController;

    invoke-static {p0, p1}, Lmiuix/appcompat/app/AlertController;->access$800(Lmiuix/appcompat/app/AlertController;Landroid/view/WindowInsets;)V

    return-void
.end method

.method public onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 1

    .line 942
    new-instance v0, Lmiuix/appcompat/app/-$$Lambda$AlertController$3$EreayaQvAe6h-pBpNjNlA1R6JM8;

    invoke-direct {v0, p0, p2}, Lmiuix/appcompat/app/-$$Lambda$AlertController$3$EreayaQvAe6h-pBpNjNlA1R6JM8;-><init>(Lmiuix/appcompat/app/AlertController$3;Landroid/view/WindowInsets;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 943
    sget-object p0, Landroid/view/WindowInsets;->CONSUMED:Landroid/view/WindowInsets;

    return-object p0
.end method
