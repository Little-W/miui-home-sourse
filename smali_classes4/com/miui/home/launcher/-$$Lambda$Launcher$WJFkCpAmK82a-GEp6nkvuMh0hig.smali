.class public final synthetic Lcom/miui/home/launcher/-$$Lambda$Launcher$WJFkCpAmK82a-GEp6nkvuMh0hig;
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

    iput-object p1, p0, Lcom/miui/home/launcher/-$$Lambda$Launcher$WJFkCpAmK82a-GEp6nkvuMh0hig;->f$0:Lcom/miui/home/launcher/Launcher;

    iput-object p2, p0, Lcom/miui/home/launcher/-$$Lambda$Launcher$WJFkCpAmK82a-GEp6nkvuMh0hig;->f$1:Lcom/miui/home/launcher/LauncherAppWidgetInfo;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/-$$Lambda$Launcher$WJFkCpAmK82a-GEp6nkvuMh0hig;->f$0:Lcom/miui/home/launcher/Launcher;

    iget-object p0, p0, Lcom/miui/home/launcher/-$$Lambda$Launcher$WJFkCpAmK82a-GEp6nkvuMh0hig;->f$1:Lcom/miui/home/launcher/LauncherAppWidgetInfo;

    invoke-virtual {v0, p0, p1, p2}, Lcom/miui/home/launcher/Launcher;->lambda$installWidget$54$Launcher(Lcom/miui/home/launcher/LauncherAppWidgetInfo;Landroid/content/DialogInterface;I)V

    return-void
.end method
