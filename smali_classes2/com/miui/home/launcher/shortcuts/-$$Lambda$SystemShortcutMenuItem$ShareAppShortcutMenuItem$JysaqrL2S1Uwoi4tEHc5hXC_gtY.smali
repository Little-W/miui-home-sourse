.class public final synthetic Lcom/miui/home/launcher/shortcuts/-$$Lambda$SystemShortcutMenuItem$ShareAppShortcutMenuItem$JysaqrL2S1Uwoi4tEHc5hXC_gtY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem$ShareAppShortcutMenuItem;

.field private final synthetic f$1:Lcom/miui/home/launcher/Launcher;

.field private final synthetic f$2:Ljava/io/File;

.field private final synthetic f$3:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem$ShareAppShortcutMenuItem;Lcom/miui/home/launcher/Launcher;Ljava/io/File;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/shortcuts/-$$Lambda$SystemShortcutMenuItem$ShareAppShortcutMenuItem$JysaqrL2S1Uwoi4tEHc5hXC_gtY;->f$0:Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem$ShareAppShortcutMenuItem;

    iput-object p2, p0, Lcom/miui/home/launcher/shortcuts/-$$Lambda$SystemShortcutMenuItem$ShareAppShortcutMenuItem$JysaqrL2S1Uwoi4tEHc5hXC_gtY;->f$1:Lcom/miui/home/launcher/Launcher;

    iput-object p3, p0, Lcom/miui/home/launcher/shortcuts/-$$Lambda$SystemShortcutMenuItem$ShareAppShortcutMenuItem$JysaqrL2S1Uwoi4tEHc5hXC_gtY;->f$2:Ljava/io/File;

    iput-object p4, p0, Lcom/miui/home/launcher/shortcuts/-$$Lambda$SystemShortcutMenuItem$ShareAppShortcutMenuItem$JysaqrL2S1Uwoi4tEHc5hXC_gtY;->f$3:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    iget-object v0, p0, Lcom/miui/home/launcher/shortcuts/-$$Lambda$SystemShortcutMenuItem$ShareAppShortcutMenuItem$JysaqrL2S1Uwoi4tEHc5hXC_gtY;->f$0:Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem$ShareAppShortcutMenuItem;

    iget-object v1, p0, Lcom/miui/home/launcher/shortcuts/-$$Lambda$SystemShortcutMenuItem$ShareAppShortcutMenuItem$JysaqrL2S1Uwoi4tEHc5hXC_gtY;->f$1:Lcom/miui/home/launcher/Launcher;

    iget-object v2, p0, Lcom/miui/home/launcher/shortcuts/-$$Lambda$SystemShortcutMenuItem$ShareAppShortcutMenuItem$JysaqrL2S1Uwoi4tEHc5hXC_gtY;->f$2:Ljava/io/File;

    iget-object v3, p0, Lcom/miui/home/launcher/shortcuts/-$$Lambda$SystemShortcutMenuItem$ShareAppShortcutMenuItem$JysaqrL2S1Uwoi4tEHc5hXC_gtY;->f$3:Ljava/lang/String;

    move-object v4, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem$ShareAppShortcutMenuItem;->lambda$showDisclaimerDialog$1$SystemShortcutMenuItem$ShareAppShortcutMenuItem(Lcom/miui/home/launcher/Launcher;Ljava/io/File;Ljava/lang/String;Landroid/content/DialogInterface;I)V

    return-void
.end method
