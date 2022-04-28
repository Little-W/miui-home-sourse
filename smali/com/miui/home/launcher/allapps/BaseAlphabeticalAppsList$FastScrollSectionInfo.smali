.class Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$FastScrollSectionInfo;
.super Ljava/lang/Object;
.source "BaseAlphabeticalAppsList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FastScrollSectionInfo"
.end annotation


# instance fields
.field fastScrollToItem:Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;

.field sectionName:Ljava/lang/String;

.field touchFraction:F


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-object p1, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$FastScrollSectionInfo;->sectionName:Ljava/lang/String;

    return-void
.end method
