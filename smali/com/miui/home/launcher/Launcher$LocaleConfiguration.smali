.class Lcom/miui/home/launcher/Launcher$LocaleConfiguration;
.super Ljava/lang/Object;
.source "Launcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/Launcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LocaleConfiguration"
.end annotation


# instance fields
.field public locale:Ljava/lang/String;

.field public mcc:I

.field public mnc:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 1163
    iput v0, p0, Lcom/miui/home/launcher/Launcher$LocaleConfiguration;->mcc:I

    .line 1164
    iput v0, p0, Lcom/miui/home/launcher/Launcher$LocaleConfiguration;->mnc:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/home/launcher/Launcher$1;)V
    .locals 0

    .line 1161
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher$LocaleConfiguration;-><init>()V

    return-void
.end method
