.class public final synthetic Lcom/miui/home/launcher/-$$Lambda$ShortcutMenuLayer$XkZVDxMUkZJXwOT03VEM5MGItw8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/launcher/ShortcutMenuLayer;

.field private final synthetic f$1:Lcom/miui/home/launcher/ItemInfo;

.field private final synthetic f$2:[F

.field private final synthetic f$3:Z

.field private final synthetic f$4:[I


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/ShortcutMenuLayer;Lcom/miui/home/launcher/ItemInfo;[FZ[I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/-$$Lambda$ShortcutMenuLayer$XkZVDxMUkZJXwOT03VEM5MGItw8;->f$0:Lcom/miui/home/launcher/ShortcutMenuLayer;

    iput-object p2, p0, Lcom/miui/home/launcher/-$$Lambda$ShortcutMenuLayer$XkZVDxMUkZJXwOT03VEM5MGItw8;->f$1:Lcom/miui/home/launcher/ItemInfo;

    iput-object p3, p0, Lcom/miui/home/launcher/-$$Lambda$ShortcutMenuLayer$XkZVDxMUkZJXwOT03VEM5MGItw8;->f$2:[F

    iput-boolean p4, p0, Lcom/miui/home/launcher/-$$Lambda$ShortcutMenuLayer$XkZVDxMUkZJXwOT03VEM5MGItw8;->f$3:Z

    iput-object p5, p0, Lcom/miui/home/launcher/-$$Lambda$ShortcutMenuLayer$XkZVDxMUkZJXwOT03VEM5MGItw8;->f$4:[I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 6

    iget-object v0, p0, Lcom/miui/home/launcher/-$$Lambda$ShortcutMenuLayer$XkZVDxMUkZJXwOT03VEM5MGItw8;->f$0:Lcom/miui/home/launcher/ShortcutMenuLayer;

    iget-object v1, p0, Lcom/miui/home/launcher/-$$Lambda$ShortcutMenuLayer$XkZVDxMUkZJXwOT03VEM5MGItw8;->f$1:Lcom/miui/home/launcher/ItemInfo;

    iget-object v2, p0, Lcom/miui/home/launcher/-$$Lambda$ShortcutMenuLayer$XkZVDxMUkZJXwOT03VEM5MGItw8;->f$2:[F

    iget-boolean v3, p0, Lcom/miui/home/launcher/-$$Lambda$ShortcutMenuLayer$XkZVDxMUkZJXwOT03VEM5MGItw8;->f$3:Z

    iget-object v4, p0, Lcom/miui/home/launcher/-$$Lambda$ShortcutMenuLayer$XkZVDxMUkZJXwOT03VEM5MGItw8;->f$4:[I

    move-object v5, p1

    check-cast v5, Lcom/miui/home/launcher/shortcuts/AllShortcutMenuItems;

    invoke-static/range {v0 .. v5}, Lcom/miui/home/launcher/ShortcutMenuLayer;->lambda$showShortcutMenu$138(Lcom/miui/home/launcher/ShortcutMenuLayer;Lcom/miui/home/launcher/ItemInfo;[FZ[ILcom/miui/home/launcher/shortcuts/AllShortcutMenuItems;)V

    return-void
.end method
