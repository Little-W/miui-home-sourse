.class public final synthetic Lcom/miui/home/launcher/-$$Lambda$ShortcutIcon$M00I1pZz_r1Xhd-mu3LMWqShf4I;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/launcher/ShortcutIcon;

.field private final synthetic f$1:Landroid/graphics/drawable/Drawable;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/ShortcutIcon;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/-$$Lambda$ShortcutIcon$M00I1pZz_r1Xhd-mu3LMWqShf4I;->f$0:Lcom/miui/home/launcher/ShortcutIcon;

    iput-object p2, p0, Lcom/miui/home/launcher/-$$Lambda$ShortcutIcon$M00I1pZz_r1Xhd-mu3LMWqShf4I;->f$1:Landroid/graphics/drawable/Drawable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/home/launcher/-$$Lambda$ShortcutIcon$M00I1pZz_r1Xhd-mu3LMWqShf4I;->f$0:Lcom/miui/home/launcher/ShortcutIcon;

    iget-object v1, p0, Lcom/miui/home/launcher/-$$Lambda$ShortcutIcon$M00I1pZz_r1Xhd-mu3LMWqShf4I;->f$1:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1}, Lcom/miui/home/launcher/ShortcutIcon;->lambda$resetBackAnim$3(Lcom/miui/home/launcher/ShortcutIcon;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
