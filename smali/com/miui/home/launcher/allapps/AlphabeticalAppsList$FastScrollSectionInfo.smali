.class Lcom/miui/home/launcher/allapps/AlphabeticalAppsList$FastScrollSectionInfo;
.super Ljava/lang/Object;
.source "AlphabeticalAppsList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FastScrollSectionInfo"
.end annotation


# instance fields
.field fastScrollToItem:Lcom/miui/home/launcher/allapps/AlphabeticalAppsList$AdapterItem;

.field sectionName:Ljava/lang/String;

.field touchFraction:F


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList$FastScrollSectionInfo;->sectionName:Ljava/lang/String;

    return-void
.end method
