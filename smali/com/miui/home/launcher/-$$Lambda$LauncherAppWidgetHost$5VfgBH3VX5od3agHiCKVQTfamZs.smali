.class public final synthetic Lcom/miui/home/launcher/-$$Lambda$LauncherAppWidgetHost$5VfgBH3VX5od3agHiCKVQTfamZs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/launcher/BaseActivity;

.field private final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/BaseActivity;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/-$$Lambda$LauncherAppWidgetHost$5VfgBH3VX5od3agHiCKVQTfamZs;->f$0:Lcom/miui/home/launcher/BaseActivity;

    iput p2, p0, Lcom/miui/home/launcher/-$$Lambda$LauncherAppWidgetHost$5VfgBH3VX5od3agHiCKVQTfamZs;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/home/launcher/-$$Lambda$LauncherAppWidgetHost$5VfgBH3VX5od3agHiCKVQTfamZs;->f$0:Lcom/miui/home/launcher/BaseActivity;

    iget v1, p0, Lcom/miui/home/launcher/-$$Lambda$LauncherAppWidgetHost$5VfgBH3VX5od3agHiCKVQTfamZs;->f$1:I

    invoke-static {v0, v1}, Lcom/miui/home/launcher/LauncherAppWidgetHost;->lambda$sendActionCancelled$0(Lcom/miui/home/launcher/BaseActivity;I)V

    return-void
.end method
