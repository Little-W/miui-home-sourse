.class interface abstract Lcom/miui/home/launcher/AllAppsList$LayoutInfoQuery;
.super Ljava/lang/Object;
.source "AllAppsList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/AllAppsList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "LayoutInfoQuery"
.end annotation


# static fields
.field public static final COLUMNS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const-string v0, "screen"

    const-string v1, "cellX"

    const-string v2, "cellY"

    const-string v3, "container"

    const-string v4, "_id"

    const-string v5, "itemType"

    const-string v6, "itemFlags"

    const-string v7, "iconType"

    .line 306
    filled-new-array/range {v0 .. v7}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/home/launcher/AllAppsList$LayoutInfoQuery;->COLUMNS:[Ljava/lang/String;

    return-void
.end method
