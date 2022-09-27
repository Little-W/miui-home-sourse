.class public final synthetic Lmiuix/appcompat/app/-$$Lambda$AlertController$3$EreayaQvAe6h-pBpNjNlA1R6JM8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lmiuix/appcompat/app/AlertController$3;

.field private final synthetic f$1:Landroid/view/WindowInsets;


# direct methods
.method public synthetic constructor <init>(Lmiuix/appcompat/app/AlertController$3;Landroid/view/WindowInsets;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmiuix/appcompat/app/-$$Lambda$AlertController$3$EreayaQvAe6h-pBpNjNlA1R6JM8;->f$0:Lmiuix/appcompat/app/AlertController$3;

    iput-object p2, p0, Lmiuix/appcompat/app/-$$Lambda$AlertController$3$EreayaQvAe6h-pBpNjNlA1R6JM8;->f$1:Landroid/view/WindowInsets;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lmiuix/appcompat/app/-$$Lambda$AlertController$3$EreayaQvAe6h-pBpNjNlA1R6JM8;->f$0:Lmiuix/appcompat/app/AlertController$3;

    iget-object v1, p0, Lmiuix/appcompat/app/-$$Lambda$AlertController$3$EreayaQvAe6h-pBpNjNlA1R6JM8;->f$1:Landroid/view/WindowInsets;

    invoke-static {v0, v1}, Lmiuix/appcompat/app/AlertController$3;->lambda$onApplyWindowInsets$0(Lmiuix/appcompat/app/AlertController$3;Landroid/view/WindowInsets;)V

    return-void
.end method
