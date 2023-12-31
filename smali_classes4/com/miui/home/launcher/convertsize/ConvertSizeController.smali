.class public interface abstract Lcom/miui/home/launcher/convertsize/ConvertSizeController;
.super Ljava/lang/Object;
.source "ConvertSizeController.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/convertsize/ConvertSizeController$DefaultImpls;,
        Lcom/miui/home/launcher/convertsize/ConvertSizeController$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/miui/home/launcher/convertsize/ConvertSizeController$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/miui/home/launcher/convertsize/ConvertSizeController$Companion;->$$INSTANCE:Lcom/miui/home/launcher/convertsize/ConvertSizeController$Companion;

    sput-object v0, Lcom/miui/home/launcher/convertsize/ConvertSizeController;->Companion:Lcom/miui/home/launcher/convertsize/ConvertSizeController$Companion;

    return-void
.end method


# virtual methods
.method public abstract convertFolderSize(Lcom/miui/home/launcher/FolderInfo;I)V
.end method
