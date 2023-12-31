.class Lcom/miui/home/launcher/Launcher$20;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/Launcher;->locateAppInner(Lcom/miui/home/launcher/ShortcutInfo;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/Launcher;

.field final synthetic val$snapToScreenIndex:I


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/Launcher;I)V
    .locals 0

    .line 3223
    iput-object p1, p0, Lcom/miui/home/launcher/Launcher$20;->this$0:Lcom/miui/home/launcher/Launcher;

    iput p2, p0, Lcom/miui/home/launcher/Launcher$20;->val$snapToScreenIndex:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 3225
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$20;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {v0}, Lcom/miui/home/launcher/Launcher;->access$1800(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/Workspace;

    move-result-object v0

    iget p0, p0, Lcom/miui/home/launcher/Launcher$20;->val$snapToScreenIndex:I

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/Workspace;->snapToScreen(I)I

    return-void
.end method
