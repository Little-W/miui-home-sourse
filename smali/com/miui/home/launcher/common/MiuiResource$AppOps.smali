.class public Lcom/miui/home/launcher/common/MiuiResource$AppOps;
.super Ljava/lang/Object;
.source "MiuiResource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/common/MiuiResource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AppOps"
.end annotation


# static fields
.field public static OP_INSTALL_SHORTCUT:I = 0x3c


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 113
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-eq v0, v1, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x16

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 115
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_2

    const/16 v0, 0x2721

    .line 116
    sput v0, Lcom/miui/home/launcher/common/MiuiResource$AppOps;->OP_INSTALL_SHORTCUT:I

    goto :goto_1

    :cond_1
    :goto_0
    const/16 v0, 0x3f

    .line 114
    sput v0, Lcom/miui/home/launcher/common/MiuiResource$AppOps;->OP_INSTALL_SHORTCUT:I

    :cond_2
    :goto_1
    return-void
.end method
