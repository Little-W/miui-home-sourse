.class public Lcom/miui/home/launcher/SearchBarTransferLayout$Data;
.super Ljava/lang/Object;
.source "SearchBarTransferLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/SearchBarTransferLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Data"
.end annotation


# instance fields
.field public action:Ljava/lang/String;

.field public dataId:Ljava/lang/String;

.field public icon:Landroid/graphics/drawable/Drawable;

.field public intent:Landroid/content/Intent;

.field public showTime:I

.field public textShowTime:I

.field public title:Ljava/lang/String;

.field public type:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;II)V
    .locals 0

    .line 357
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 358
    iput-object p1, p0, Lcom/miui/home/launcher/SearchBarTransferLayout$Data;->dataId:Ljava/lang/String;

    .line 359
    iput-object p2, p0, Lcom/miui/home/launcher/SearchBarTransferLayout$Data;->title:Ljava/lang/String;

    .line 360
    iput-object p3, p0, Lcom/miui/home/launcher/SearchBarTransferLayout$Data;->intent:Landroid/content/Intent;

    .line 361
    iput-object p4, p0, Lcom/miui/home/launcher/SearchBarTransferLayout$Data;->action:Ljava/lang/String;

    .line 362
    iput-object p5, p0, Lcom/miui/home/launcher/SearchBarTransferLayout$Data;->icon:Landroid/graphics/drawable/Drawable;

    .line 363
    iput-object p6, p0, Lcom/miui/home/launcher/SearchBarTransferLayout$Data;->type:Ljava/lang/String;

    .line 364
    iput p7, p0, Lcom/miui/home/launcher/SearchBarTransferLayout$Data;->showTime:I

    .line 365
    iput p8, p0, Lcom/miui/home/launcher/SearchBarTransferLayout$Data;->textShowTime:I

    return-void
.end method
