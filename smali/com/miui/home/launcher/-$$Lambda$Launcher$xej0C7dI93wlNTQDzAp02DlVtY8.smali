.class public final synthetic Lcom/miui/home/launcher/-$$Lambda$Launcher$xej0C7dI93wlNTQDzAp02DlVtY8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/launcher/Launcher;

.field private final synthetic f$1:Lcom/miui/home/launcher/CellLayout;

.field private final synthetic f$2:Lcom/miui/home/launcher/ShortcutInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/CellLayout;Lcom/miui/home/launcher/ShortcutInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/-$$Lambda$Launcher$xej0C7dI93wlNTQDzAp02DlVtY8;->f$0:Lcom/miui/home/launcher/Launcher;

    iput-object p2, p0, Lcom/miui/home/launcher/-$$Lambda$Launcher$xej0C7dI93wlNTQDzAp02DlVtY8;->f$1:Lcom/miui/home/launcher/CellLayout;

    iput-object p3, p0, Lcom/miui/home/launcher/-$$Lambda$Launcher$xej0C7dI93wlNTQDzAp02DlVtY8;->f$2:Lcom/miui/home/launcher/ShortcutInfo;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/miui/home/launcher/-$$Lambda$Launcher$xej0C7dI93wlNTQDzAp02DlVtY8;->f$0:Lcom/miui/home/launcher/Launcher;

    iget-object v1, p0, Lcom/miui/home/launcher/-$$Lambda$Launcher$xej0C7dI93wlNTQDzAp02DlVtY8;->f$1:Lcom/miui/home/launcher/CellLayout;

    iget-object v2, p0, Lcom/miui/home/launcher/-$$Lambda$Launcher$xej0C7dI93wlNTQDzAp02DlVtY8;->f$2:Lcom/miui/home/launcher/ShortcutInfo;

    invoke-static {v0, v1, v2}, Lcom/miui/home/launcher/Launcher;->lambda$addShortcut$37(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/CellLayout;Lcom/miui/home/launcher/ShortcutInfo;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
