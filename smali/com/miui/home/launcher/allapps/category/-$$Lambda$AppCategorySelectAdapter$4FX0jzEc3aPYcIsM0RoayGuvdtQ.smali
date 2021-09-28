.class public final synthetic Lcom/miui/home/launcher/allapps/category/-$$Lambda$AppCategorySelectAdapter$4FX0jzEc3aPYcIsM0RoayGuvdtQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter$IconViewHolder;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter$IconViewHolder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/allapps/category/-$$Lambda$AppCategorySelectAdapter$4FX0jzEc3aPYcIsM0RoayGuvdtQ;->f$0:Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter$IconViewHolder;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/-$$Lambda$AppCategorySelectAdapter$4FX0jzEc3aPYcIsM0RoayGuvdtQ;->f$0:Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter$IconViewHolder;

    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter;->lambda$onBindViewHolder$0(Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter$IconViewHolder;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
