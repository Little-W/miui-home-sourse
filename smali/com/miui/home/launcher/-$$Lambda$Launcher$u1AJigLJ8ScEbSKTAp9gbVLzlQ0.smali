.class public final synthetic Lcom/miui/home/launcher/-$$Lambda$Launcher$u1AJigLJ8ScEbSKTAp9gbVLzlQ0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/launcher/Launcher;

.field private final synthetic f$1:Lcom/miui/home/launcher/ShortcutInfo;

.field private final synthetic f$2:Lcom/miui/home/launcher/ShortcutInfo;

.field private final synthetic f$3:Landroid/content/pm/PackageManager;

.field private final synthetic f$4:Landroid/content/Intent;

.field private final synthetic f$5:Z


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/ShortcutInfo;Lcom/miui/home/launcher/ShortcutInfo;Landroid/content/pm/PackageManager;Landroid/content/Intent;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/-$$Lambda$Launcher$u1AJigLJ8ScEbSKTAp9gbVLzlQ0;->f$0:Lcom/miui/home/launcher/Launcher;

    iput-object p2, p0, Lcom/miui/home/launcher/-$$Lambda$Launcher$u1AJigLJ8ScEbSKTAp9gbVLzlQ0;->f$1:Lcom/miui/home/launcher/ShortcutInfo;

    iput-object p3, p0, Lcom/miui/home/launcher/-$$Lambda$Launcher$u1AJigLJ8ScEbSKTAp9gbVLzlQ0;->f$2:Lcom/miui/home/launcher/ShortcutInfo;

    iput-object p4, p0, Lcom/miui/home/launcher/-$$Lambda$Launcher$u1AJigLJ8ScEbSKTAp9gbVLzlQ0;->f$3:Landroid/content/pm/PackageManager;

    iput-object p5, p0, Lcom/miui/home/launcher/-$$Lambda$Launcher$u1AJigLJ8ScEbSKTAp9gbVLzlQ0;->f$4:Landroid/content/Intent;

    iput-boolean p6, p0, Lcom/miui/home/launcher/-$$Lambda$Launcher$u1AJigLJ8ScEbSKTAp9gbVLzlQ0;->f$5:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/miui/home/launcher/-$$Lambda$Launcher$u1AJigLJ8ScEbSKTAp9gbVLzlQ0;->f$0:Lcom/miui/home/launcher/Launcher;

    iget-object v1, p0, Lcom/miui/home/launcher/-$$Lambda$Launcher$u1AJigLJ8ScEbSKTAp9gbVLzlQ0;->f$1:Lcom/miui/home/launcher/ShortcutInfo;

    iget-object v2, p0, Lcom/miui/home/launcher/-$$Lambda$Launcher$u1AJigLJ8ScEbSKTAp9gbVLzlQ0;->f$2:Lcom/miui/home/launcher/ShortcutInfo;

    iget-object v3, p0, Lcom/miui/home/launcher/-$$Lambda$Launcher$u1AJigLJ8ScEbSKTAp9gbVLzlQ0;->f$3:Landroid/content/pm/PackageManager;

    iget-object v4, p0, Lcom/miui/home/launcher/-$$Lambda$Launcher$u1AJigLJ8ScEbSKTAp9gbVLzlQ0;->f$4:Landroid/content/Intent;

    iget-boolean v5, p0, Lcom/miui/home/launcher/-$$Lambda$Launcher$u1AJigLJ8ScEbSKTAp9gbVLzlQ0;->f$5:Z

    invoke-static/range {v0 .. v5}, Lcom/miui/home/launcher/Launcher;->lambda$checkAllAppsLabel$36(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/ShortcutInfo;Lcom/miui/home/launcher/ShortcutInfo;Landroid/content/pm/PackageManager;Landroid/content/Intent;Z)V

    return-void
.end method
