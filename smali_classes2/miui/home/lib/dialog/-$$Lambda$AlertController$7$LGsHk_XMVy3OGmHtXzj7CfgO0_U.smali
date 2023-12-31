.class public final synthetic Lmiui/home/lib/dialog/-$$Lambda$AlertController$7$LGsHk_XMVy3OGmHtXzj7CfgO0_U;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lmiui/home/lib/dialog/AlertController$7;

.field private final synthetic f$1:Landroid/view/WindowInsets;


# direct methods
.method public synthetic constructor <init>(Lmiui/home/lib/dialog/AlertController$7;Landroid/view/WindowInsets;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmiui/home/lib/dialog/-$$Lambda$AlertController$7$LGsHk_XMVy3OGmHtXzj7CfgO0_U;->f$0:Lmiui/home/lib/dialog/AlertController$7;

    iput-object p2, p0, Lmiui/home/lib/dialog/-$$Lambda$AlertController$7$LGsHk_XMVy3OGmHtXzj7CfgO0_U;->f$1:Landroid/view/WindowInsets;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lmiui/home/lib/dialog/-$$Lambda$AlertController$7$LGsHk_XMVy3OGmHtXzj7CfgO0_U;->f$0:Lmiui/home/lib/dialog/AlertController$7;

    iget-object p0, p0, Lmiui/home/lib/dialog/-$$Lambda$AlertController$7$LGsHk_XMVy3OGmHtXzj7CfgO0_U;->f$1:Landroid/view/WindowInsets;

    invoke-virtual {v0, p0}, Lmiui/home/lib/dialog/AlertController$7;->lambda$onApplyWindowInsets$0$AlertController$7(Landroid/view/WindowInsets;)V

    return-void
.end method
