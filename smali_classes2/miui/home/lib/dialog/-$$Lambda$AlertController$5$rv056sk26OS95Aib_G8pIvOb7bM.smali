.class public final synthetic Lmiui/home/lib/dialog/-$$Lambda$AlertController$5$rv056sk26OS95Aib_G8pIvOb7bM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lmiui/home/lib/dialog/AlertController$5;

.field private final synthetic f$1:Landroid/view/WindowInsets;


# direct methods
.method public synthetic constructor <init>(Lmiui/home/lib/dialog/AlertController$5;Landroid/view/WindowInsets;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmiui/home/lib/dialog/-$$Lambda$AlertController$5$rv056sk26OS95Aib_G8pIvOb7bM;->f$0:Lmiui/home/lib/dialog/AlertController$5;

    iput-object p2, p0, Lmiui/home/lib/dialog/-$$Lambda$AlertController$5$rv056sk26OS95Aib_G8pIvOb7bM;->f$1:Landroid/view/WindowInsets;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lmiui/home/lib/dialog/-$$Lambda$AlertController$5$rv056sk26OS95Aib_G8pIvOb7bM;->f$0:Lmiui/home/lib/dialog/AlertController$5;

    iget-object v1, p0, Lmiui/home/lib/dialog/-$$Lambda$AlertController$5$rv056sk26OS95Aib_G8pIvOb7bM;->f$1:Landroid/view/WindowInsets;

    invoke-static {v0, v1}, Lmiui/home/lib/dialog/AlertController$5;->lambda$onApplyWindowInsets$0(Lmiui/home/lib/dialog/AlertController$5;Landroid/view/WindowInsets;)V

    return-void
.end method
