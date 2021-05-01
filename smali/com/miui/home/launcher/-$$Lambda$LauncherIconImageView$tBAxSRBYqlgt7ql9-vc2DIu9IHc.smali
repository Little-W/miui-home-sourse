.class public final synthetic Lcom/miui/home/launcher/-$$Lambda$LauncherIconImageView$tBAxSRBYqlgt7ql9-vc2DIu9IHc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/launcher/LauncherIconImageView;

.field private final synthetic f$1:Landroid/graphics/drawable/Drawable;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/LauncherIconImageView;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/-$$Lambda$LauncherIconImageView$tBAxSRBYqlgt7ql9-vc2DIu9IHc;->f$0:Lcom/miui/home/launcher/LauncherIconImageView;

    iput-object p2, p0, Lcom/miui/home/launcher/-$$Lambda$LauncherIconImageView$tBAxSRBYqlgt7ql9-vc2DIu9IHc;->f$1:Landroid/graphics/drawable/Drawable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/home/launcher/-$$Lambda$LauncherIconImageView$tBAxSRBYqlgt7ql9-vc2DIu9IHc;->f$0:Lcom/miui/home/launcher/LauncherIconImageView;

    iget-object v1, p0, Lcom/miui/home/launcher/-$$Lambda$LauncherIconImageView$tBAxSRBYqlgt7ql9-vc2DIu9IHc;->f$1:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1}, Lcom/miui/home/launcher/LauncherIconImageView;->lambda$invalidateDrawable$177(Lcom/miui/home/launcher/LauncherIconImageView;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
