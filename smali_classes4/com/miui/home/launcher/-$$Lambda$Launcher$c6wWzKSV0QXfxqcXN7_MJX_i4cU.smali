.class public final synthetic Lcom/miui/home/launcher/-$$Lambda$Launcher$c6wWzKSV0QXfxqcXN7_MJX_i4cU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/launcher/ShortcutInfo;

.field private final synthetic f$1:Lcom/miui/home/launcher/Application;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/ShortcutInfo;Lcom/miui/home/launcher/Application;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/-$$Lambda$Launcher$c6wWzKSV0QXfxqcXN7_MJX_i4cU;->f$0:Lcom/miui/home/launcher/ShortcutInfo;

    iput-object p2, p0, Lcom/miui/home/launcher/-$$Lambda$Launcher$c6wWzKSV0QXfxqcXN7_MJX_i4cU;->f$1:Lcom/miui/home/launcher/Application;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/-$$Lambda$Launcher$c6wWzKSV0QXfxqcXN7_MJX_i4cU;->f$0:Lcom/miui/home/launcher/ShortcutInfo;

    iget-object p0, p0, Lcom/miui/home/launcher/-$$Lambda$Launcher$c6wWzKSV0QXfxqcXN7_MJX_i4cU;->f$1:Lcom/miui/home/launcher/Application;

    invoke-static {v0, p0}, Lcom/miui/home/launcher/Launcher;->lambda$addToAppsList$63(Lcom/miui/home/launcher/ShortcutInfo;Lcom/miui/home/launcher/Application;)V

    return-void
.end method
