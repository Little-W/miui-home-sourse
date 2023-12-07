.class public final synthetic Lcom/miui/home/launcher/common/-$$Lambda$Utilities$BitmapUtils$KKLTaubXO3XW5p7k8BezYC8cC5U;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Landroid/content/Context;

.field private final synthetic f$1:Ljava/lang/String;

.field private final synthetic f$2:Ljava/lang/String;

.field private final synthetic f$3:Landroid/graphics/Bitmap;

.field private final synthetic f$4:Landroid/graphics/Bitmap$CompressFormat;

.field private final synthetic f$5:I


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/common/-$$Lambda$Utilities$BitmapUtils$KKLTaubXO3XW5p7k8BezYC8cC5U;->f$0:Landroid/content/Context;

    iput-object p2, p0, Lcom/miui/home/launcher/common/-$$Lambda$Utilities$BitmapUtils$KKLTaubXO3XW5p7k8BezYC8cC5U;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/miui/home/launcher/common/-$$Lambda$Utilities$BitmapUtils$KKLTaubXO3XW5p7k8BezYC8cC5U;->f$2:Ljava/lang/String;

    iput-object p4, p0, Lcom/miui/home/launcher/common/-$$Lambda$Utilities$BitmapUtils$KKLTaubXO3XW5p7k8BezYC8cC5U;->f$3:Landroid/graphics/Bitmap;

    iput-object p5, p0, Lcom/miui/home/launcher/common/-$$Lambda$Utilities$BitmapUtils$KKLTaubXO3XW5p7k8BezYC8cC5U;->f$4:Landroid/graphics/Bitmap$CompressFormat;

    iput p6, p0, Lcom/miui/home/launcher/common/-$$Lambda$Utilities$BitmapUtils$KKLTaubXO3XW5p7k8BezYC8cC5U;->f$5:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/miui/home/launcher/common/-$$Lambda$Utilities$BitmapUtils$KKLTaubXO3XW5p7k8BezYC8cC5U;->f$0:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/home/launcher/common/-$$Lambda$Utilities$BitmapUtils$KKLTaubXO3XW5p7k8BezYC8cC5U;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/miui/home/launcher/common/-$$Lambda$Utilities$BitmapUtils$KKLTaubXO3XW5p7k8BezYC8cC5U;->f$2:Ljava/lang/String;

    iget-object v3, p0, Lcom/miui/home/launcher/common/-$$Lambda$Utilities$BitmapUtils$KKLTaubXO3XW5p7k8BezYC8cC5U;->f$3:Landroid/graphics/Bitmap;

    iget-object v4, p0, Lcom/miui/home/launcher/common/-$$Lambda$Utilities$BitmapUtils$KKLTaubXO3XW5p7k8BezYC8cC5U;->f$4:Landroid/graphics/Bitmap$CompressFormat;

    iget v5, p0, Lcom/miui/home/launcher/common/-$$Lambda$Utilities$BitmapUtils$KKLTaubXO3XW5p7k8BezYC8cC5U;->f$5:I

    invoke-static/range {v0 .. v5}, Lcom/miui/home/launcher/common/Utilities$BitmapUtils;->lambda$saveBitmapInFile$0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;I)V

    return-void
.end method
