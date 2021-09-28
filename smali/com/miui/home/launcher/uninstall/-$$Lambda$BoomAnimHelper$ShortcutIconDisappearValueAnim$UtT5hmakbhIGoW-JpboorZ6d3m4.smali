.class public final synthetic Lcom/miui/home/launcher/uninstall/-$$Lambda$BoomAnimHelper$ShortcutIconDisappearValueAnim$UtT5hmakbhIGoW-JpboorZ6d3m4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/launcher/ShortcutIcon;

.field private final synthetic f$1:Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/ShortcutIcon;Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/uninstall/-$$Lambda$BoomAnimHelper$ShortcutIconDisappearValueAnim$UtT5hmakbhIGoW-JpboorZ6d3m4;->f$0:Lcom/miui/home/launcher/ShortcutIcon;

    iput-object p2, p0, Lcom/miui/home/launcher/uninstall/-$$Lambda$BoomAnimHelper$ShortcutIconDisappearValueAnim$UtT5hmakbhIGoW-JpboorZ6d3m4;->f$1:Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/home/launcher/uninstall/-$$Lambda$BoomAnimHelper$ShortcutIconDisappearValueAnim$UtT5hmakbhIGoW-JpboorZ6d3m4;->f$0:Lcom/miui/home/launcher/ShortcutIcon;

    iget-object v1, p0, Lcom/miui/home/launcher/uninstall/-$$Lambda$BoomAnimHelper$ShortcutIconDisappearValueAnim$UtT5hmakbhIGoW-JpboorZ6d3m4;->f$1:Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator;

    invoke-static {v0, v1, p1}, Lcom/miui/home/launcher/uninstall/BoomAnimHelper$ShortcutIconDisappearValueAnim;->lambda$new$0(Lcom/miui/home/launcher/ShortcutIcon;Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator;Landroid/animation/ValueAnimator;)V

    return-void
.end method
