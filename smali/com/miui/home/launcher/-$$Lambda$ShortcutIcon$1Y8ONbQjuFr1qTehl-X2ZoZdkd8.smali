.class public final synthetic Lcom/miui/home/launcher/-$$Lambda$ShortcutIcon$1Y8ONbQjuFr1qTehl-X2ZoZdkd8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/launcher/ShortcutIcon;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/ShortcutIcon;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/-$$Lambda$ShortcutIcon$1Y8ONbQjuFr1qTehl-X2ZoZdkd8;->f$0:Lcom/miui/home/launcher/ShortcutIcon;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/-$$Lambda$ShortcutIcon$1Y8ONbQjuFr1qTehl-X2ZoZdkd8;->f$0:Lcom/miui/home/launcher/ShortcutIcon;

    invoke-static {v0}, Lcom/miui/home/launcher/ShortcutIcon;->lambda$resetBackAnim$3(Lcom/miui/home/launcher/ShortcutIcon;)V

    return-void
.end method