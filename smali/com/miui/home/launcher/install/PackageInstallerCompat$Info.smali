.class public Lcom/miui/home/launcher/install/PackageInstallerCompat$Info;
.super Ljava/lang/Object;
.source "PackageInstallerCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/install/PackageInstallerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Info"
.end annotation


# instance fields
.field public icon:Landroid/graphics/drawable/Drawable;

.field public label:Ljava/lang/CharSequence;

.field public progress:I


# direct methods
.method constructor <init>(Ljava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/miui/home/launcher/install/PackageInstallerCompat$Info;->label:Ljava/lang/CharSequence;

    .line 33
    iput p2, p0, Lcom/miui/home/launcher/install/PackageInstallerCompat$Info;->progress:I

    .line 34
    iput-object p3, p0, Lcom/miui/home/launcher/install/PackageInstallerCompat$Info;->icon:Landroid/graphics/drawable/Drawable;

    return-void
.end method
