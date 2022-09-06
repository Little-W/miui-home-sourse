.class Lcom/miui/home/launcher/compat/LauncherCellCountCompatElderlyManMode$LauncherCellCountCompatElderlyManModeInstance;
.super Ljava/lang/Object;
.source "LauncherCellCountCompatElderlyManMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/compat/LauncherCellCountCompatElderlyManMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LauncherCellCountCompatElderlyManModeInstance"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/miui/home/launcher/compat/LauncherCellCountCompatElderlyManMode;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 19
    new-instance v0, Lcom/miui/home/launcher/compat/LauncherCellCountCompatElderlyManMode;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/home/launcher/compat/LauncherCellCountCompatElderlyManMode;-><init>(Lcom/miui/home/launcher/compat/LauncherCellCountCompatElderlyManMode$1;)V

    sput-object v0, Lcom/miui/home/launcher/compat/LauncherCellCountCompatElderlyManMode$LauncherCellCountCompatElderlyManModeInstance;->INSTANCE:Lcom/miui/home/launcher/compat/LauncherCellCountCompatElderlyManMode;

    return-void
.end method

.method static synthetic access$000()Lcom/miui/home/launcher/compat/LauncherCellCountCompatElderlyManMode;
    .locals 1

    .line 18
    sget-object v0, Lcom/miui/home/launcher/compat/LauncherCellCountCompatElderlyManMode$LauncherCellCountCompatElderlyManModeInstance;->INSTANCE:Lcom/miui/home/launcher/compat/LauncherCellCountCompatElderlyManMode;

    return-object v0
.end method
