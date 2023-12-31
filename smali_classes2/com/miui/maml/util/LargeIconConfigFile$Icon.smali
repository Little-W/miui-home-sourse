.class public Lcom/miui/maml/util/LargeIconConfigFile$Icon;
.super Ljava/lang/Object;
.source "LargeIconConfigFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/util/LargeIconConfigFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Icon"
.end annotation


# instance fields
.field public associatedPackage:Ljava/lang/String;

.field public enableIconMask:I

.field public isPairApp:Z

.field public localId:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public packageName:Ljava/lang/String;

.field public packageName1:Ljava/lang/String;

.field public packageName2:Ljava/lang/String;

.field public path:Ljava/lang/String;

.field public size:Ljava/lang/String;

.field public uuid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 61
    iput v0, p0, Lcom/miui/maml/util/LargeIconConfigFile$Icon;->enableIconMask:I

    return-void
.end method
