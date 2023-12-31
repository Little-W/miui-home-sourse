.class Lmiui/app/MiuiFreeFormManager$2;
.super Ljava/lang/Object;
.source "MiuiFreeFormManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/app/MiuiFreeFormManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    .line 69
    invoke-static {p2}, Lmiui/app/IMiuiFreeFormGuideTipServices$Stub;->asInterface(Landroid/os/IBinder;)Lmiui/app/IMiuiFreeFormGuideTipServices;

    move-result-object p0

    invoke-static {p0}, Lmiui/app/MiuiFreeFormManager;->access$002(Lmiui/app/IMiuiFreeFormGuideTipServices;)Lmiui/app/IMiuiFreeFormGuideTipServices;

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    const/4 p0, 0x0

    .line 74
    invoke-static {p0}, Lmiui/app/MiuiFreeFormManager;->access$002(Lmiui/app/IMiuiFreeFormGuideTipServices;)Lmiui/app/IMiuiFreeFormGuideTipServices;

    return-void
.end method
