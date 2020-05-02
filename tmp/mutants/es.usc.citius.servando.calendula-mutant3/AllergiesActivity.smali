.class public Les/usc/citius/servando/calendula/activities/AllergiesActivity;
.super Les/usc/citius/servando/calendula/CalendulaActivity;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Les/usc/citius/servando/calendula/activities/AllergiesActivity$SaveAllergiesTask;,
        Les/usc/citius/servando/calendula/activities/AllergiesActivity$LoadAllergiesTask;,
        Les/usc/citius/servando/calendula/activities/AllergiesActivity$DeleteAllergyTask;,
        Les/usc/citius/servando/calendula/activities/AllergiesActivity$DeleteAllergyGroupTask;,
        Les/usc/citius/servando/calendula/activities/AllergiesActivity$AllergiesStore;,
        Les/usc/citius/servando/calendula/activities/AllergiesActivity$SaveResult;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AllergiesActivity"


# instance fields
.field protected addButton:Landroid/support/design/widget/FloatingActionButton;
    .annotation build Lbutterknife/BindView;
    .end annotation
.end field

.field private allergiesAdapter:Lcom/mikepenz/a/b/a/a;

.field protected allergiesPlaceholder:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
    .end annotation
.end field

.field protected allergiesRecycler:Landroid/support/v7/widget/RecyclerView;
    .annotation build Lbutterknife/BindView;
    .end annotation
.end field

.field private color:I

.field protected progressBar:Landroid/widget/ProgressBar;
    .annotation build Lbutterknife/BindView;
    .end annotation
.end field

.field private store:Les/usc/citius/servando/calendula/activities/AllergiesActivity$AllergiesStore;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Les/usc/citius/servando/calendula/CalendulaActivity;-><init>()V

    return-void
.end method

.method static synthetic access$1000(Les/usc/citius/servando/calendula/activities/AllergiesActivity;Z)V
    .locals 0

    invoke-direct {p0, p1}, Les/usc/citius/servando/calendula/activities/AllergiesActivity;->hideAllergiesView(Z)V

    return-void
.end method

.method static synthetic access$1100(Les/usc/citius/servando/calendula/activities/AllergiesActivity;)Ljava/util/List;
    .locals 0

    invoke-direct {p0}, Les/usc/citius/servando/calendula/activities/AllergiesActivity;->getAllergyItems()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1200(Les/usc/citius/servando/calendula/activities/AllergiesActivity;)V
    .locals 0

    invoke-direct {p0}, Les/usc/citius/servando/calendula/activities/AllergiesActivity;->showNewAllergyConflictDialog()V

    return-void
.end method

.method static synthetic access$200(Les/usc/citius/servando/calendula/activities/AllergiesActivity;Les/usc/citius/servando/calendula/adapters/items/allergylist/AllergyGroupItem;)V
    .locals 0

    invoke-direct {p0, p1}, Les/usc/citius/servando/calendula/activities/AllergiesActivity;->showDeleteConfirmationDialog(Les/usc/citius/servando/calendula/adapters/items/allergylist/AllergyGroupItem;)V

    return-void
.end method

.method static synthetic access$300(Les/usc/citius/servando/calendula/activities/AllergiesActivity;Les/usc/citius/servando/calendula/adapters/items/allergylist/AllergyItem;)V
    .locals 0

    invoke-direct {p0, p1}, Les/usc/citius/servando/calendula/activities/AllergiesActivity;->showDeleteConfirmationDialog(Les/usc/citius/servando/calendula/adapters/items/allergylist/AllergyItem;)V

    return-void
.end method

.method static synthetic access$400(Les/usc/citius/servando/calendula/activities/AllergiesActivity;)Lcom/mikepenz/a/b/a/a;
    .locals 0

    iget-object p0, p0, Les/usc/citius/servando/calendula/activities/AllergiesActivity;->allergiesAdapter:Lcom/mikepenz/a/b/a/a;

    return-object p0
.end method

.method static synthetic access$700(Les/usc/citius/servando/calendula/activities/AllergiesActivity;Les/usc/citius/servando/calendula/allergies/AllergenVO;)Z
    .locals 0

    invoke-direct {p0, p1}, Les/usc/citius/servando/calendula/activities/AllergiesActivity;->checkConflictsAndCreateAlerts(Les/usc/citius/servando/calendula/allergies/AllergenVO;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$800(Les/usc/citius/servando/calendula/activities/AllergiesActivity;)Les/usc/citius/servando/calendula/activities/AllergiesActivity$AllergiesStore;
    .locals 0

    iget-object p0, p0, Les/usc/citius/servando/calendula/activities/AllergiesActivity;->store:Les/usc/citius/servando/calendula/activities/AllergiesActivity$AllergiesStore;

    return-object p0
.end method

.method static synthetic access$900(Les/usc/citius/servando/calendula/activities/AllergiesActivity;)V
    .locals 0

    invoke-direct {p0}, Les/usc/citius/servando/calendula/activities/AllergiesActivity;->checkPlaceholder()V

    return-void
.end method

.method private checkConflictsAndCreateAlerts(Les/usc/citius/servando/calendula/allergies/AllergenVO;)Z
    .locals 2

    invoke-static {p0, p1}, Les/usc/citius/servando/calendula/allergies/AllergenFacade;->checkNewMedicineAllergies(Landroid/content/Context;Les/usc/citius/servando/calendula/allergies/AllergenVO;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Les/usc/citius/servando/calendula/activities/AllergiesActivity$3;

    invoke-direct {v1, p0, v0, p1}, Les/usc/citius/servando/calendula/activities/AllergiesActivity$3;-><init>(Les/usc/citius/servando/calendula/activities/AllergiesActivity;Ljava/util/List;Les/usc/citius/servando/calendula/allergies/AllergenVO;)V

    invoke-static {v1}, Les/usc/citius/servando/calendula/database/DB;->transaction(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method private checkPlaceholder()V
    .locals 2

    iget-object v0, p0, Les/usc/citius/servando/calendula/activities/AllergiesActivity;->allergiesPlaceholder:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Les/usc/citius/servando/calendula/activities/AllergiesActivity;->store:Les/usc/citius/servando/calendula/activities/AllergiesActivity$AllergiesStore;

    invoke-virtual {v0}, Les/usc/citius/servando/calendula/activities/AllergiesActivity$AllergiesStore;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Les/usc/citius/servando/calendula/activities/AllergiesActivity;->allergiesPlaceholder:Landroid/widget/TextView;

    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    :cond_0
    iget-object v0, p0, Les/usc/citius/servando/calendula/activities/AllergiesActivity;->store:Les/usc/citius/servando/calendula/activities/AllergiesActivity$AllergiesStore;

    invoke-virtual {v0}, Les/usc/citius/servando/calendula/activities/AllergiesActivity$AllergiesStore;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Les/usc/citius/servando/calendula/activities/AllergiesActivity;->allergiesPlaceholder:Landroid/widget/TextView;

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private getAllergyItems()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/mikepenz/a/d/a;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Les/usc/citius/servando/calendula/activities/AllergiesActivity;->store:Les/usc/citius/servando/calendula/activities/AllergiesActivity$AllergiesStore;

    invoke-virtual {v1}, Les/usc/citius/servando/calendula/activities/AllergiesActivity$AllergiesStore;->getAllergies()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Les/usc/citius/servando/calendula/persistence/PatientAllergen;

    invoke-virtual {v5}, Les/usc/citius/servando/calendula/persistence/PatientAllergen;->getGroup()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_0

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v3, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    new-instance v7, Les/usc/citius/servando/calendula/adapters/items/allergylist/AllergyGroupSubItem;

    invoke-direct {v7, v5, p0}, Les/usc/citius/servando/calendula/adapters/items/allergylist/AllergyGroupSubItem;-><init>(Les/usc/citius/servando/calendula/persistence/PatientAllergen;Landroid/content/Context;)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-interface {v0, v2}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    new-instance v5, Les/usc/citius/servando/calendula/adapters/items/allergylist/AllergyGroupItem;

    invoke-direct {v5, v4, p0}, Les/usc/citius/servando/calendula/adapters/items/allergylist/AllergyGroupItem;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-virtual {v5, v4}, Les/usc/citius/servando/calendula/adapters/items/allergylist/AllergyGroupItem;->withSubItems(Ljava/util/List;)Lcom/mikepenz/a/b/b/a;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Les/usc/citius/servando/calendula/persistence/PatientAllergen;

    new-instance v3, Les/usc/citius/servando/calendula/adapters/items/allergylist/AllergyItem;

    invoke-direct {v3, v2, p0}, Les/usc/citius/servando/calendula/adapters/items/allergylist/AllergyItem;-><init>(Les/usc/citius/servando/calendula/persistence/PatientAllergen;Landroid/content/Context;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    return-object v1
.end method

.method private hideAllergiesView(Z)V
    .locals 2

    if-eqz p1, :cond_0

    const/16 v0, 0x8

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Les/usc/citius/servando/calendula/activities/AllergiesActivity;->allergiesRecycler:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    iget-object v1, p0, Les/usc/citius/servando/calendula/activities/AllergiesActivity;->addButton:Landroid/support/design/widget/FloatingActionButton;

    invoke-virtual {v1, v0}, Landroid/support/design/widget/FloatingActionButton;->setVisibility(I)V

    if-nez p1, :cond_1

    invoke-direct {p0}, Les/usc/citius/servando/calendula/activities/AllergiesActivity;->checkPlaceholder()V

    :cond_1
    return-void
.end method

.method private setupAllergiesList()V
    .locals 2

    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;->b(I)V

    iget-object v1, p0, Les/usc/citius/servando/calendula/activities/AllergiesActivity;->allergiesRecycler:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$i;)V

    new-instance v0, Lcom/mikepenz/a/b/a/a;

    invoke-direct {v0}, Lcom/mikepenz/a/b/a/a;-><init>()V

    iput-object v0, p0, Les/usc/citius/servando/calendula/activities/AllergiesActivity;->allergiesAdapter:Lcom/mikepenz/a/b/a/a;

    iget-object v0, p0, Les/usc/citius/servando/calendula/activities/AllergiesActivity;->allergiesAdapter:Lcom/mikepenz/a/b/a/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mikepenz/a/b/a/a;->b(Z)Lcom/mikepenz/a/b;

    iget-object v0, p0, Les/usc/citius/servando/calendula/activities/AllergiesActivity;->allergiesAdapter:Lcom/mikepenz/a/b/a/a;

    new-instance v1, Les/usc/citius/servando/calendula/activities/AllergiesActivity$4;

    invoke-direct {v1, p0}, Les/usc/citius/servando/calendula/activities/AllergiesActivity$4;-><init>(Les/usc/citius/servando/calendula/activities/AllergiesActivity;)V

    invoke-virtual {v0, v1}, Lcom/mikepenz/a/b/a/a;->a(Lcom/mikepenz/a/e/c;)Lcom/mikepenz/a/b;

    iget-object v0, p0, Les/usc/citius/servando/calendula/activities/AllergiesActivity;->allergiesRecycler:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Les/usc/citius/servando/calendula/activities/AllergiesActivity;->allergiesAdapter:Lcom/mikepenz/a/b/a/a;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$a;)V

    return-void
.end method

.method private showDeleteConfirmationDialog(Les/usc/citius/servando/calendula/adapters/items/allergylist/AllergyGroupItem;)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1}, Les/usc/citius/servando/calendula/adapters/items/allergylist/AllergyGroupItem;->getTitle()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const v1, 0x7f1007b7

    invoke-virtual {p0, v1, v0}, Les/usc/citius/servando/calendula/activities/AllergiesActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Les/usc/citius/servando/calendula/activities/AllergiesActivity$7;

    invoke-direct {v1, p0, p1}, Les/usc/citius/servando/calendula/activities/AllergiesActivity$7;-><init>(Les/usc/citius/servando/calendula/activities/AllergiesActivity;Les/usc/citius/servando/calendula/adapters/items/allergylist/AllergyGroupItem;)V

    new-instance p1, Les/usc/citius/servando/calendula/activities/AllergiesActivity$8;

    invoke-direct {p1, p0}, Les/usc/citius/servando/calendula/activities/AllergiesActivity$8;-><init>(Les/usc/citius/servando/calendula/activities/AllergiesActivity;)V

    invoke-direct {p0, v0, v1, p1}, Les/usc/citius/servando/calendula/activities/AllergiesActivity;->showDeleteConfirmationDialog(Ljava/lang/String;Lcom/afollestad/materialdialogs/f$k;Lcom/afollestad/materialdialogs/f$k;)V

    return-void
.end method

.method private showDeleteConfirmationDialog(Les/usc/citius/servando/calendula/adapters/items/allergylist/AllergyItem;)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1}, Les/usc/citius/servando/calendula/adapters/items/allergylist/AllergyItem;->getAllergen()Les/usc/citius/servando/calendula/persistence/PatientAllergen;

    move-result-object v1

    invoke-virtual {v1}, Les/usc/citius/servando/calendula/persistence/PatientAllergen;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const v1, 0x7f1007b7

    invoke-virtual {p0, v1, v0}, Les/usc/citius/servando/calendula/activities/AllergiesActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Les/usc/citius/servando/calendula/activities/AllergiesActivity$5;

    invoke-direct {v1, p0, p1}, Les/usc/citius/servando/calendula/activities/AllergiesActivity$5;-><init>(Les/usc/citius/servando/calendula/activities/AllergiesActivity;Les/usc/citius/servando/calendula/adapters/items/allergylist/AllergyItem;)V

    new-instance p1, Les/usc/citius/servando/calendula/activities/AllergiesActivity$6;

    invoke-direct {p1, p0}, Les/usc/citius/servando/calendula/activities/AllergiesActivity$6;-><init>(Les/usc/citius/servando/calendula/activities/AllergiesActivity;)V

    invoke-direct {p0, v0, v1, p1}, Les/usc/citius/servando/calendula/activities/AllergiesActivity;->showDeleteConfirmationDialog(Ljava/lang/String;Lcom/afollestad/materialdialogs/f$k;Lcom/afollestad/materialdialogs/f$k;)V

    return-void
.end method

.method private showDeleteConfirmationDialog(Ljava/lang/String;Lcom/afollestad/materialdialogs/f$k;Lcom/afollestad/materialdialogs/f$k;)V
    .locals 4

    new-instance v0, Lcom/d/a/a/a$a;

    invoke-direct {v0, p0}, Lcom/d/a/a/a$a;-><init>(Landroid/content/Context;)V

    sget-object v1, Lcom/d/a/a/a/b;->a:Lcom/d/a/a/a/b;

    invoke-virtual {v0, v1}, Lcom/d/a/a/a$a;->a(Lcom/d/a/a/a/b;)Lcom/d/a/a/a$a;

    move-result-object v0

    sget-object v1, Lcom/mikepenz/community_material_typeface_library/CommunityMaterial$a;->jC:Lcom/mikepenz/community_material_typeface_library/CommunityMaterial$a;

    const v2, 0x7f06024c

    const/16 v3, 0x64

    invoke-static {p0, v1, v2, v3}, Les/usc/citius/servando/calendula/util/IconUtils;->icon(Landroid/content/Context;Lcom/mikepenz/iconics/b/a;II)Lcom/mikepenz/iconics/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/d/a/a/a$a;->a(Landroid/graphics/drawable/Drawable;)Lcom/d/a/a/a$a;

    move-result-object v0

    const v1, 0x7f060041

    invoke-virtual {v0, v1}, Lcom/d/a/a/a$a;->c(I)Lcom/d/a/a/a$a;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/d/a/a/a$a;->b(Ljava/lang/Boolean;)Lcom/d/a/a/a$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/d/a/a/a$a;->b(Ljava/lang/CharSequence;)Lcom/d/a/a/a$a;

    move-result-object p1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/d/a/a/a$a;->c(Ljava/lang/Boolean;)Lcom/d/a/a/a$a;

    move-result-object p1

    const v0, 0x7f100119

    invoke-virtual {p0, v0}, Les/usc/citius/servando/calendula/activities/AllergiesActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/d/a/a/a$a;->d(Ljava/lang/CharSequence;)Lcom/d/a/a/a$a;

    move-result-object p1

    const v0, 0x7f10011a

    invoke-virtual {p0, v0}, Les/usc/citius/servando/calendula/activities/AllergiesActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/d/a/a/a$a;->c(Ljava/lang/CharSequence;)Lcom/d/a/a/a$a;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/d/a/a/a$a;->a(Lcom/afollestad/materialdialogs/f$k;)Lcom/d/a/a/a$a;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/d/a/a/a$a;->b(Lcom/afollestad/materialdialogs/f$k;)Lcom/d/a/a/a$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/d/a/a/a$a;->b()Lcom/d/a/a/a;

    return-void
.end method

.method private showNewAllergyConflictDialog()V
    .locals 4

    new-instance v0, Lcom/d/a/a/a$a;

    invoke-direct {v0, p0}, Lcom/d/a/a/a$a;-><init>(Landroid/content/Context;)V

    sget-object v1, Lcom/d/a/a/a/b;->a:Lcom/d/a/a/a/b;

    invoke-virtual {v0, v1}, Lcom/d/a/a/a$a;->a(Lcom/d/a/a/a/b;)Lcom/d/a/a/a$a;

    move-result-object v0

    sget-object v1, Lcom/mikepenz/community_material_typeface_library/CommunityMaterial$a;->ly:Lcom/mikepenz/community_material_typeface_library/CommunityMaterial$a;

    const v2, 0x7f06024c

    const/16 v3, 0x64

    invoke-static {p0, v1, v2, v3}, Les/usc/citius/servando/calendula/util/IconUtils;->icon(Landroid/content/Context;Lcom/mikepenz/iconics/b/a;II)Lcom/mikepenz/iconics/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/d/a/a/a$a;->a(Landroid/graphics/drawable/Drawable;)Lcom/d/a/a/a$a;

    move-result-object v0

    const v1, 0x7f060041

    invoke-virtual {v0, v1}, Lcom/d/a/a/a$a;->c(I)Lcom/d/a/a/a$a;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/d/a/a/a$a;->b(Ljava/lang/Boolean;)Lcom/d/a/a/a$a;

    move-result-object v0

    const v1, 0x7f10085b

    invoke-virtual {v0, v1}, Lcom/d/a/a/a$a;->a(I)Lcom/d/a/a/a$a;

    move-result-object v0

    const v1, 0x7f1006f2

    invoke-virtual {v0, v1}, Lcom/d/a/a/a$a;->b(I)Lcom/d/a/a/a$a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/d/a/a/a$a;->c(Ljava/lang/Boolean;)Lcom/d/a/a/a$a;

    move-result-object v0

    const v1, 0x7f100731

    invoke-virtual {p0, v1}, Les/usc/citius/servando/calendula/activities/AllergiesActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/d/a/a/a$a;->c(Ljava/lang/CharSequence;)Lcom/d/a/a/a$a;

    move-result-object v0

    new-instance v1, Les/usc/citius/servando/calendula/activities/AllergiesActivity$9;

    invoke-direct {v1, p0}, Les/usc/citius/servando/calendula/activities/AllergiesActivity$9;-><init>(Les/usc/citius/servando/calendula/activities/AllergiesActivity;)V

    invoke-virtual {v0, v1}, Lcom/d/a/a/a$a;->a(Lcom/afollestad/materialdialogs/f$k;)Lcom/d/a/a/a$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/d/a/a/a$a;->b()Lcom/d/a/a/a;

    return-void
.end method

.method private showWarningIfNeeded()V
    .locals 6

    invoke-static {}, Les/usc/citius/servando/calendula/util/PreferenceUtils;->instance()Les/usc/citius/servando/calendula/util/PreferenceUtils;

    move-result-object v0

    invoke-virtual {v0}, Les/usc/citius/servando/calendula/util/PreferenceUtils;->preferences()Landroid/content/SharedPreferences;

    move-result-object v0

    sget-object v1, Les/usc/citius/servando/calendula/util/PreferenceKeys;->ALLERGIES_WARNING_SHOWN:Les/usc/citius/servando/calendula/util/PreferenceKeys;

    invoke-virtual {v1}, Les/usc/citius/servando/calendula/util/PreferenceKeys;->key()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lcom/d/a/a/a$a;

    invoke-direct {v1, p0}, Lcom/d/a/a/a$a;-><init>(Landroid/content/Context;)V

    sget-object v3, Lcom/d/a/a/a/b;->a:Lcom/d/a/a/a/b;

    invoke-virtual {v1, v3}, Lcom/d/a/a/a$a;->a(Lcom/d/a/a/a/b;)Lcom/d/a/a/a$a;

    move-result-object v1

    sget-object v3, Lcom/mikepenz/google_material_typeface_library/GoogleMaterial$a;->dG:Lcom/mikepenz/google_material_typeface_library/GoogleMaterial$a;

    const v4, 0x7f06024c

    const/16 v5, 0x64

    invoke-static {p0, v3, v4, v5}, Les/usc/citius/servando/calendula/util/IconUtils;->icon(Landroid/content/Context;Lcom/mikepenz/iconics/b/a;II)Lcom/mikepenz/iconics/b;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/d/a/a/a$a;->a(Landroid/graphics/drawable/Drawable;)Lcom/d/a/a/a$a;

    move-result-object v1

    const v3, 0x7f06003a

    invoke-virtual {v1, v3}, Lcom/d/a/a/a$a;->c(I)Lcom/d/a/a/a$a;

    move-result-object v1

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/d/a/a/a$a;->b(Ljava/lang/Boolean;)Lcom/d/a/a/a$a;

    move-result-object v1

    const v3, 0x7f100156

    invoke-virtual {v1, v3}, Lcom/d/a/a/a$a;->a(I)Lcom/d/a/a/a$a;

    move-result-object v1

    const v3, 0x7f1006f3

    invoke-virtual {v1, v3}, Lcom/d/a/a/a$a;->b(I)Lcom/d/a/a/a$a;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/d/a/a/a$a;->c(Ljava/lang/Boolean;)Lcom/d/a/a/a$a;

    move-result-object v1

    const v2, 0x7f100116

    invoke-virtual {p0, v2}, Les/usc/citius/servando/calendula/activities/AllergiesActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/d/a/a/a$a;->c(Ljava/lang/CharSequence;)Lcom/d/a/a/a$a;

    move-result-object v1

    new-instance v2, Les/usc/citius/servando/calendula/activities/AllergiesActivity$2;

    invoke-direct {v2, p0, v0}, Les/usc/citius/servando/calendula/activities/AllergiesActivity$2;-><init>(Les/usc/citius/servando/calendula/activities/AllergiesActivity;Landroid/content/SharedPreferences;)V

    invoke-virtual {v1, v2}, Lcom/d/a/a/a$a;->a(Lcom/afollestad/materialdialogs/f$k;)Lcom/d/a/a/a$a;

    move-result-object v0

    const v1, 0x7f100117

    invoke-virtual {v0, v1}, Lcom/d/a/a/a$a;->e(I)Lcom/d/a/a/a$a;

    move-result-object v0

    new-instance v1, Les/usc/citius/servando/calendula/activities/AllergiesActivity$1;

    invoke-direct {v1, p0}, Les/usc/citius/servando/calendula/activities/AllergiesActivity$1;-><init>(Les/usc/citius/servando/calendula/activities/AllergiesActivity;)V

    invoke-virtual {v0, v1}, Lcom/d/a/a/a$a;->b(Lcom/afollestad/materialdialogs/f$k;)Lcom/d/a/a/a$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/d/a/a/a$a;->b()Lcom/d/a/a/a;

    :cond_0
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    const-string p1, "result"

    invoke-virtual {p3, p1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    new-instance p2, Les/usc/citius/servando/calendula/activities/AllergiesActivity$SaveAllergiesTask;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3}, Les/usc/citius/servando/calendula/activities/AllergiesActivity$SaveAllergiesTask;-><init>(Les/usc/citius/servando/calendula/activities/AllergiesActivity;Les/usc/citius/servando/calendula/activities/AllergiesActivity$1;)V

    new-array p3, v0, [Ljava/util/Collection;

    const/4 v0, 0x0

    aput-object p1, p3, v0

    invoke-virtual {p2, p3}, Les/usc/citius/servando/calendula/activities/AllergiesActivity$SaveAllergiesTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Les/usc/citius/servando/calendula/CalendulaActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0b001d

    invoke-virtual {p0, p1}, Les/usc/citius/servando/calendula/activities/AllergiesActivity;->setContentView(I)V

    invoke-static {p0}, Lbutterknife/ButterKnife;->a(Landroid/app/Activity;)Lbutterknife/Unbinder;

    iget-object p1, p0, Les/usc/citius/servando/calendula/activities/AllergiesActivity;->addButton:Landroid/support/design/widget/FloatingActionButton;

    new-instance v0, Lcom/mikepenz/iconics/b;

    invoke-direct {v0, p0}, Lcom/mikepenz/iconics/b;-><init>(Landroid/content/Context;)V

    sget-object v1, Lcom/mikepenz/google_material_typeface_library/GoogleMaterial$a;->gl:Lcom/mikepenz/google_material_typeface_library/GoogleMaterial$a;

    invoke-virtual {v0, v1}, Lcom/mikepenz/iconics/b;->a(Lcom/mikepenz/iconics/b/a;)Lcom/mikepenz/iconics/b;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/mikepenz/iconics/b;->g(I)Lcom/mikepenz/iconics/b;

    move-result-object v0

    const/16 v1, 0x18

    invoke-virtual {v0, v1}, Lcom/mikepenz/iconics/b;->j(I)Lcom/mikepenz/iconics/b;

    move-result-object v0

    const v1, 0x7f0600bf

    invoke-virtual {v0, v1}, Lcom/mikepenz/iconics/b;->b(I)Lcom/mikepenz/iconics/b;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/design/widget/FloatingActionButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-static {}, Les/usc/citius/servando/calendula/database/DB;->patients()Les/usc/citius/servando/calendula/database/PatientDao;

    move-result-object p1

    invoke-virtual {p1, p0}, Les/usc/citius/servando/calendula/database/PatientDao;->getActive(Landroid/content/Context;)Les/usc/citius/servando/calendula/persistence/Patient;

    move-result-object p1

    invoke-virtual {p1}, Les/usc/citius/servando/calendula/persistence/Patient;->getColor()I

    move-result v0

    iput v0, p0, Les/usc/citius/servando/calendula/activities/AllergiesActivity;->color:I

    invoke-virtual {p1}, Les/usc/citius/servando/calendula/persistence/Patient;->getName()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const p1, 0x7f10084c

    invoke-virtual {p0, p1}, Les/usc/citius/servando/calendula/activities/AllergiesActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x1

    aput-object p1, v0, v2

    const p1, 0x7f1007b5

    invoke-virtual {p0, p1, v0}, Les/usc/citius/servando/calendula/activities/AllergiesActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget v0, p0, Les/usc/citius/servando/calendula/activities/AllergiesActivity;->color:I

    invoke-virtual {p0, p1, v0}, Les/usc/citius/servando/calendula/activities/AllergiesActivity;->setupToolbar(Ljava/lang/String;I)Les/usc/citius/servando/calendula/CalendulaActivity;

    iget p1, p0, Les/usc/citius/servando/calendula/activities/AllergiesActivity;->color:I

    invoke-virtual {p0, p1}, Les/usc/citius/servando/calendula/activities/AllergiesActivity;->setupStatusBar(I)Les/usc/citius/servando/calendula/CalendulaActivity;

    new-instance p1, Les/usc/citius/servando/calendula/activities/AllergiesActivity$AllergiesStore;

    invoke-direct {p1, p0}, Les/usc/citius/servando/calendula/activities/AllergiesActivity$AllergiesStore;-><init>(Les/usc/citius/servando/calendula/activities/AllergiesActivity;)V

    iput-object p1, p0, Les/usc/citius/servando/calendula/activities/AllergiesActivity;->store:Les/usc/citius/servando/calendula/activities/AllergiesActivity$AllergiesStore;

    invoke-direct {p0}, Les/usc/citius/servando/calendula/activities/AllergiesActivity;->setupAllergiesList()V

    iget-object p1, p0, Les/usc/citius/servando/calendula/activities/AllergiesActivity;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getIndeterminateDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iget v0, p0, Les/usc/citius/servando/calendula/activities/AllergiesActivity;->color:I

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v0, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    new-instance p1, Les/usc/citius/servando/calendula/activities/AllergiesActivity$LoadAllergiesTask;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Les/usc/citius/servando/calendula/activities/AllergiesActivity$LoadAllergiesTask;-><init>(Les/usc/citius/servando/calendula/activities/AllergiesActivity;Les/usc/citius/servando/calendula/activities/AllergiesActivity$1;)V

    new-array v0, v1, [Ljava/lang/Void;

    invoke-virtual {p1, v0}, Les/usc/citius/servando/calendula/activities/AllergiesActivity$LoadAllergiesTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    invoke-direct {p0}, Les/usc/citius/servando/calendula/activities/AllergiesActivity;->showWarningIfNeeded()V

    return-void
.end method

.method showSearchView()V
    .locals 2
    .annotation build Lbutterknife/OnClick;
    .end annotation

    new-instance v0, Landroid/content/Intent;

    const-class v1, Les/usc/citius/servando/calendula/activities/StartActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Les/usc/citius/servando/calendula/activities/AllergiesActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
