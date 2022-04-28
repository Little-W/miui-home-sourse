.class public final synthetic Lcom/miui/home/launcher/-$$Lambda$Launcher$z7oyAaB6ZSIw-9Sr6HU9dgLVN7o;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/launcher/Launcher;

.field private final synthetic f$1:Lcom/miui/home/launcher/LauncherAppWidgetInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/LauncherAppWidgetInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/-$$Lambda$Launcher$z7oyAaB6ZSIw-9Sr6HU9dgLVN7o;->f$0:Lcom/miui/home/launcher/Launcher;

    iput-object p2, p0, Lcom/miui/home/launcher/-$$Lambda$Launcher$z7oyAaB6ZSIw-9Sr6HU9dgLVN7o;->f$1:Lcom/miui/home/launcher/LauncherAppWidgetInfo;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/miui/home/launcher/-$$Lambda$Launcher$z7oyAaB6ZSIw-9Sr6HU9dgLVN7o;->f$0:Lcom/miui/home/launcher/Launcher;

    iget-object v1, p0, Lcom/miui/home/launcher/-$$Lambda$Launcher$z7oyAaB6ZSIw-9Sr6HU9dgLVN7o;->f$1:Lcom/miui/home/launcher/LauncherAppWidgetInfo;

    invoke-static {v0, v1, p1, p2}, Lcom/miui/home/launcher/Launcher;->lambda$installWidget$49(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/LauncherAppWidgetInfo;Landroid/content/DialogInterface;I)V

    return-void
.end method
