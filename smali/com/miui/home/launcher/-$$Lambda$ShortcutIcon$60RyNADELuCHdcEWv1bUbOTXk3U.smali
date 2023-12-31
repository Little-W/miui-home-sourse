.class public final synthetic Lcom/miui/home/launcher/-$$Lambda$ShortcutIcon$60RyNADELuCHdcEWv1bUbOTXk3U;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/launcher/ShortcutIcon;

.field private final synthetic f$1:Lcom/miui/home/launcher/ShortcutInfo;

.field private final synthetic f$2:Lcom/miui/home/launcher/Launcher;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/ShortcutIcon;Lcom/miui/home/launcher/ShortcutInfo;Lcom/miui/home/launcher/Launcher;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/-$$Lambda$ShortcutIcon$60RyNADELuCHdcEWv1bUbOTXk3U;->f$0:Lcom/miui/home/launcher/ShortcutIcon;

    iput-object p2, p0, Lcom/miui/home/launcher/-$$Lambda$ShortcutIcon$60RyNADELuCHdcEWv1bUbOTXk3U;->f$1:Lcom/miui/home/launcher/ShortcutInfo;

    iput-object p3, p0, Lcom/miui/home/launcher/-$$Lambda$ShortcutIcon$60RyNADELuCHdcEWv1bUbOTXk3U;->f$2:Lcom/miui/home/launcher/Launcher;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/home/launcher/-$$Lambda$ShortcutIcon$60RyNADELuCHdcEWv1bUbOTXk3U;->f$0:Lcom/miui/home/launcher/ShortcutIcon;

    iget-object v1, p0, Lcom/miui/home/launcher/-$$Lambda$ShortcutIcon$60RyNADELuCHdcEWv1bUbOTXk3U;->f$1:Lcom/miui/home/launcher/ShortcutInfo;

    iget-object p0, p0, Lcom/miui/home/launcher/-$$Lambda$ShortcutIcon$60RyNADELuCHdcEWv1bUbOTXk3U;->f$2:Lcom/miui/home/launcher/Launcher;

    invoke-static {v0, v1, p0}, Lcom/miui/home/launcher/ShortcutIcon;->lambda$fromXml$0(Lcom/miui/home/launcher/ShortcutIcon;Lcom/miui/home/launcher/ShortcutInfo;Lcom/miui/home/launcher/Launcher;)V

    return-void
.end method
